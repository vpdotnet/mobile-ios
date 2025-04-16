//
//  SignupProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 28/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
@testable import VP_VPN_tvOS

class SignupProviderMock: SignupProviderType {
    private let result: Result<VP_VPN_tvOS.UserAccount, SignupError>
    
    init(result: Result<VP_VPN_tvOS.UserAccount, SignupError>) {
        self.result = result
    }
    
    func signup(email: String, transaction: VPLibrary.InAppTransaction?, _ callback: @escaping (Result<VP_VPN_tvOS.UserAccount, SignupError>) -> Void) {
        callback(result)
    }
}
