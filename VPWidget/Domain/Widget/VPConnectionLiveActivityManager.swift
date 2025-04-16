
import Foundation
import ActivityKit

public protocol VPConnectionLiveActivityManagerType {
    func startLiveActivity(with state: VPConnectionAttributes.ContentState)
    func endLiveActivities()
}

@available(iOS 16.2, *)
public final class VPConnectionLiveActivityManager: VPConnectionLiveActivityManagerType {
    
    private var activity: Activity<VPConnectionAttributes>?
    private var currentActivityPriority = 0
    
    static let shared = VPConnectionLiveActivityManager()
    
    private init() {}
    
    deinit {
        endLiveActivities()
    }
    
    public func startLiveActivity(with state: VPConnectionAttributes.ContentState) {
        guard activity == nil else {
            updateLiveActivity(with: state)
            return
        }
        
        createNewLiveActivity(with: state)
        
    }
    
    public func endLiveActivities() {
        let currentActivities = Activity<VPConnectionAttributes>.activities
        
        guard !currentActivities.isEmpty else { return }
        
        let semaphore = DispatchSemaphore(value: 0)
        
        Task {
            for act in currentActivities {
                await act.end(dismissalPolicy: .immediate)
                
                semaphore.signal()
            }
        }
        semaphore.wait()
        
    }
    
    public func endPreviousActivities() {
        let currentActivities = Activity<VPConnectionAttributes>.activities
        for act in currentActivities {
            Task {
                await act.end(dismissalPolicy: .immediate)
            }
        }
        activity = nil
    }
    
    private func createNewLiveActivity(with state: VPConnectionAttributes.ContentState) {
        // Clear all the Live Activities before starting a new one
        endPreviousActivities()
        
        let attributes = VPConnectionAttributes()

        activity = try? Activity<VPConnectionAttributes>.request(attributes: attributes, contentState: state, pushType: nil)
    }
    
    private func updateLiveActivity(with state: VPConnectionAttributes.ContentState) {
        guard activity?.activityState == .active else {
            createNewLiveActivity(with: state)
            return
        }
        // Only update the live activity if there is new content
        guard state != activity?.content.state else { return }
        
        Task {
            await activity?.update(using: state)
        }
        
    }
    
}
