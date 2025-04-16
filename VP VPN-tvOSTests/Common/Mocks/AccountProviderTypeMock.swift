//
//  AccountProviderTypeMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 12/20/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
import XCTest

#if canImport(VP_VPN_tvOS)
@testable import VP_VPN_tvOS
#endif

#if canImport(VP_VPN)
@testable import VP_VPN
#endif


class AccountProviderTypeMock: AccountProviderType {
    
    
    var publicUsername: String? = nil
    
    var currentUser: VPLibrary.UserAccount? = nil
    
    var isLoggedIn: Bool = false
    var isExpired: Bool = false
    
    private(set) var logoutCalled = false
    private(set) var logoutCalledAttempt = 0
    private(set) var loginWithTokenCalledAttempt = 0
    func logout(_ callback: ((Error?) -> Void)?) {
        logoutCalled = true
        logoutCalledAttempt += 1
    }
    
    func login(with linkToken: String, _ callback: ((VPLibrary.UserAccount?, Error?) -> Void)?) {
        loginWithTokenCalledAttempt += 1
    }
    
    private(set) var accountInformationCalledAttempt = 0
    var accountInformationResult: VPLibrary.AccountInfo?
    var accountInformationError: Error?
    func accountInformation(_ callback: ((VPLibrary.AccountInfo?, Error?) -> Void)?) {
        accountInformationCalledAttempt += 1
        callback?(accountInformationResult, accountInformationError)

    }
}
