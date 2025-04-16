
import Foundation
import VPLibrary

class GenerateQRLoginUseCaseMock: GenerateQRLoginUseCaseType {
    private let result: Result<Data, ClientError>
    
    init(result: Result<Data, ClientError>) {
        self.result = result
    }
    
    public func callAsFunction(completion: @escaping Completion) {
        completion(result)
    }
}
