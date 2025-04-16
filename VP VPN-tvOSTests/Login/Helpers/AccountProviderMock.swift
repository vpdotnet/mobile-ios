//
//  AccountProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 12/12/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
@testable import VP_VPN_tvOS

class AccountProviderMock: AccountProvider {
    var planProducts: [VPLibrary.Plan : VPLibrary.InAppProduct]?
    var shouldCleanAccount: Bool = true
    var isLoggedIn: Bool = true
    var currentUser: VPLibrary.UserAccount?
    var oldToken: String?
    var apiToken: String?
    var vpnToken: String?
    var vpnTokenUsername: String?
    var vpnTokenPassword: String?
    var publicUsername: String?
    var currentPasswordReference: Data?
    var lastSignupRequest: VPLibrary.SignupRequest?
    func migrateOldTokenIfNeeded(_ callback: VPLibrary.SuccessLibraryCallback?) {}
    
    private let userResult: VPLibrary.UserAccount?
    private let errorResult: Error?
    private let appStoreInformationResult: VPLibrary.AppStoreInformation?
    var isExpired: Bool = false
    
    init(userResult: VPLibrary.UserAccount?, errorResult: Error?, appStoreInformationResult: VPLibrary.AppStoreInformation? = nil) {
        self.userResult = userResult
        self.errorResult = errorResult
        self.appStoreInformationResult = appStoreInformationResult
    }
    
    func login(with request: VPLibrary.LoginRequest, _ callback: VPLibrary.LibraryCallback<VPLibrary.UserAccount>?) {
        callback?(userResult, errorResult)
    }
    
    func login(with linkToken: String, _ callback: ((VPLibrary.UserAccount?, Error?) -> Void)?) {
        callback?(userResult, errorResult)
    }
    
    func signup(with request: VPLibrary.SignupRequest, _ callback: VPLibrary.LibraryCallback<VPLibrary.UserAccount>?) {
        callback?(userResult, errorResult)
    }
    
    func subscriptionInformation(_ callback: VPLibrary.LibraryCallback<VPLibrary.AppStoreInformation>?) {
        callback?(appStoreInformationResult, errorResult)
    }
    
    func login(with receiptRequest: VPLibrary.LoginReceiptRequest, _ callback: VPLibrary.LibraryCallback<VPLibrary.UserAccount>?) {
        callback?(userResult, errorResult)
    }
    
    func refreshAccountInfo(_ callback: VPLibrary.LibraryCallback<VPLibrary.AccountInfo>?) {}
    func accountInformation(_ callback: ((VPLibrary.AccountInfo?, Error?) -> Void)?) {}
    func update(with request: VPLibrary.UpdateAccountRequest, resetPassword reset: Bool, andPassword password: String, _ callback: VPLibrary.LibraryCallback<VPLibrary.AccountInfo>?) {}
    func logout(_ callback: VPLibrary.SuccessLibraryCallback?) {}
    func deleteAccount(_ callback: VPLibrary.SuccessLibraryCallback?) {}
    func cleanDatabase() {}
    func featureFlags(_ callback: VPLibrary.SuccessLibraryCallback?) {}
    func listPlanProducts(_ callback: VPLibrary.LibraryCallback<[VPLibrary.Plan : VPLibrary.InAppProduct]>?) {}
    func purchase(plan: VPLibrary.Plan, _ callback: VPLibrary.LibraryCallback<VPLibrary.InAppTransaction>?) {}
    func isAPIEndpointAvailable(_ callback: VPLibrary.LibraryCallback<Bool>?) {}
    func restorePurchases(_ callback: VPLibrary.SuccessLibraryCallback?) {}
    func loginUsingMagicLink(withEmail email: String, _ callback: VPLibrary.SuccessLibraryCallback?) {}
    func listRenewablePlans(_ callback: VPLibrary.LibraryCallback<[VPLibrary.Plan]>?) {}
    func renew(with request: VPLibrary.RenewRequest, _ callback: VPLibrary.LibraryCallback<VPLibrary.UserAccount>?) {}
    
    func validateLoginQR(with qrToken: String, _ callback: ((String?, (any Error)?) -> Void)?) {
        callback?(apiToken, errorResult)
    }
}

extension AccountProviderMock: AccountProviderType {}
