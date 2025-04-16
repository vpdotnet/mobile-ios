//
//  Stubs.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 29/11/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
import account
@testable import VP_VPN_tvOS

extension VPLibrary.UserAccount {
    static func makeStub() -> VPLibrary.UserAccount {
        let credentials = VPLibrary.Credentials(username: "username",
                                                 password: "password")
        return VPLibrary.UserAccount(credentials: credentials,
                                      info: AccountInfo.makeStub())
    }
    
    static func makeExpiredStub() -> VPLibrary.UserAccount {
        let credentials = VPLibrary.Credentials(username: "username",
                                                 password: "password")
        return VPLibrary.UserAccount(credentials: credentials,
                                      info: AccountInfo.makeExpiredStub())
    }
}

extension VPLibrary.AccountInfo {
    static func makeStub() -> VPLibrary.AccountInfo {
        
        let account = AccountInformation(active: true,
                                         canInvite: true,
                                         canceled: true,
                                         daysRemaining: 0,
                                         email: "email",
                                         expirationTime: Int32(Date(timeIntervalSinceNow: 800).timeIntervalSince1970),
                                         expireAlert: false,
                                         expired: false,
                                         needsPayment: true,
                                         plan: "monthly",
                                         productId: "productId",
                                         recurring: true,
                                         renewUrl: "renewUrl",
                                         renewable: true,
                                         username: "username")
        
        return VPLibrary.AccountInfo(accountInformation: account)
    }
    
    static func makeExpiredStub() -> VPLibrary.AccountInfo {
        
        let account = AccountInformation(active: true,
                                         canInvite: true,
                                         canceled: true,
                                         daysRemaining: 0,
                                         email: "email",
                                         expirationTime: 0,
                                         expireAlert: true,
                                         expired: true,
                                         needsPayment: true,
                                         plan: "monthly",
                                         productId: "productId",
                                         recurring: true,
                                         renewUrl: "renewUrl",
                                         renewable: true,
                                         username: "username")
        
        return VPLibrary.AccountInfo(accountInformation: account)
    }
}

extension InAppProductMock {
    static func makeStubs() -> [Plan: InAppProductMock] {
        [
            Plan.monthly : InAppProductMock(identifier: "001",
                                            price: 10.99,
                                            priceLocale: .current,
                                            native: nil,
                                            description: "monthly"),
            Plan.yearly : InAppProductMock(identifier: "002",
                                           price: 100.99,
                                           priceLocale: .current,
                                           native: nil,
                                           description: "yearly")
        ]
    }
}

extension SubscriptionProduct {
    static func makeStubs() -> [SubscriptionProduct] {
        [
            SubscriptionProduct(product: InAppProductMock(identifier: "001",
                                                          price: 10.99,
                                                          priceLocale: .current,
                                                          native: nil,
                                                          description: "monthly"),
                                type: .monthly),
            SubscriptionProduct(product: InAppProductMock(identifier: "002",
                                                          price: 100.99,
                                                          priceLocale: .current,
                                                          native: nil,
                                                          description: "yearly"),
                                type: .yearly)
        ]
    }
}

extension VP_VPN_tvOS.Product {
    static func makeStubs() -> [VP_VPN_tvOS.Product] {
        [
            VP_VPN_tvOS.Product(identifier: "001", plan: .monthly, price: "10.99", legacy: false),
            VP_VPN_tvOS.Product(identifier: "002", plan: .yearly, price: "100.99", legacy: false),
            VP_VPN_tvOS.Product(identifier: "003", plan: .yearly, price: "87.99", legacy: true)
        ]
    }
}

extension InAppTransactionMock {
    static func makeStub() -> InAppTransactionMock {
        InAppTransactionMock(identifier: "001",
                             native: nil,
                             description: "description")
    }
}

extension VPLibrary.UserAccount: Equatable {
    public static func == (lhs: VPLibrary.UserAccount, rhs: VPLibrary.UserAccount) -> Bool {
        lhs.credentials == rhs.credentials
        && lhs.info == rhs.info
    }
}

extension VPLibrary.Credentials: Equatable {
    public static func == (lhs: VPLibrary.Credentials, rhs: VPLibrary.Credentials) -> Bool {
        lhs.username == rhs.username && lhs.password == rhs.password
    }
}

extension VPLibrary.AccountInfo: Equatable {
    public static func == (lhs: VPLibrary.AccountInfo, rhs: VPLibrary.AccountInfo) -> Bool {
        lhs.email == rhs.email
        && lhs.username == rhs.username
        && lhs.plan == rhs.plan
        && lhs.productId == rhs.productId
        && lhs.isRenewable == rhs.isRenewable
        && lhs.isRecurring == rhs.isRecurring
        && lhs.expirationDate == rhs.expirationDate
        && lhs.canInvite == rhs.canInvite
        && lhs.isExpired == rhs.isExpired
        && lhs.shouldPresentExpirationAlert == rhs.shouldPresentExpirationAlert
        && lhs.renewUrl == rhs.renewUrl
    }
}
