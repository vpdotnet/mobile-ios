//
//  PurchaseProductUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 19/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS
import VPLibrary

class PurchaseProductUseCaseMock: PurchaseProductUseCaseType {
    private let result: Result<InAppTransaction, Error>
    
    init(result: Result<InAppTransaction, Error>) {
        self.result = result
    }
    
    func callAsFunction(subscriptionOption: SubscriptionOption) async throws -> InAppTransaction {
        switch result {
            case .success(let transaction):
                return transaction
            case .failure(let error):
                throw error
        }
    }
}
