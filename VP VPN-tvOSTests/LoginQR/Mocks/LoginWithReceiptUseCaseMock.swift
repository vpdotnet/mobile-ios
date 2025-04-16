//
//  LoginWithReceiptUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 21/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class LoginWithReceiptUseCaseMock: LoginWithReceiptUseCaseType {
    private let result: Result<UserAccount, Error>
    
    init(result: Result<UserAccount, Error>) {
        self.result = result
    }
    
    func callAsFunction() async throws -> UserAccount {
        switch result {
            case .success(let userAccount):
                return userAccount
            case .failure(let error):
                throw error
        }
    }
}
