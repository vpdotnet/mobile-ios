//
//  SubscriptionInformationProviderType.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 19/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

protocol SubscriptionInformationProviderType {
    func subscriptionInformation(_ callback: @escaping (AppStoreInformation?, Error?) -> Void)
}
