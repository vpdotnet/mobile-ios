//
//  SignupUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 5/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS
import VPLibrary

class SignupUseCaseMock: VP_VPN_tvOS.SignupUseCaseType {
    private let result: Result<VP_VPN_tvOS.UserAccount, Error>
    
    init(result: Result<VP_VPN_tvOS.UserAccount, Error>) {
        self.result = result
    }
    
    func callAsFunction(email: String, transaction: VPLibrary.InAppTransaction?) async throws -> VP_VPN_tvOS.UserAccount {
        switch result {
            case .success(let userAccount):
                return userAccount
            case .failure(let error):
                throw error
        }
    }
}
