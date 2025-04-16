//
//  GenerateLoginQRCodeUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 12/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
@testable import VP_VPN_tvOS

class GenerateLoginQRCodeUseCaseMock: GenerateLoginQRCodeUseCaseType {
    private let result: Result<LoginQRCode, ClientError>
    
    init(result: Result<LoginQRCode, ClientError>) {
        self.result = result
    }
    
    func callAsFunction() async throws -> LoginQRCode {
        switch result {
        case .success(let loginQRCode):
            return loginQRCode
        case .failure(let error):
            throw error
        }
    }
}
