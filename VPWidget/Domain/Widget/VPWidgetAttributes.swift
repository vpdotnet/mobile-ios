
import Foundation
import ActivityKit

public struct VPConnectionAttributes: ActivityAttributes {
    public typealias VPConnectionStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var connected: Bool
        var regionName: String
        var regionFlag: String
        var vpnProtocol: String
        
    }
    
} 

