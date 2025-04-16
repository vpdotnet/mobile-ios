//
//  LoginProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 4/12/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class LoginProviderMock: LoginProviderType {
    private let result: Result<UserAccount, Error>
    
    init(result: Result<UserAccount, Error>) {
        self.result = result
    }
    
    func login(with credentials: Credentials, completion: @escaping (Result<UserAccount, Error>) -> Void) {
        completion(result)
    }
    
    func login(with receipt: Data, completion: @escaping (Result<UserAccount, any Error>) -> Void) {
        completion(result)
    }
}
