//
//  PurchaseProductsProviderType.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 24/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

protocol PurchaseProductsProviderType {
    func purchase(subscriptionOption: SubscriptionOption, _ callback: @escaping (Result<InAppTransaction, PurchaseProductsError>) -> Void)
}
