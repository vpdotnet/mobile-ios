//
//  PurchaseProductsAccountProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 28/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS
import VPLibrary

class PurchaseProductsAccountProviderMock: PurchaseProductsAccountProviderType {
    private let result: (InAppTransaction?, Error?)
    
    init(result: (InAppTransaction?, Error?)) {
        self.result = result
    }
    
    func purchase(plan: Plan, _ callback: LibraryCallback<InAppTransaction>?) {
        callback?(result.0, result.1)
    }
}
