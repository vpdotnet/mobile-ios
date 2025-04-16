//
//  SubscriptionInformationProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 19/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class SubscriptionInformationProviderMock: SubscriptionInformationProviderType {
    private let result: (AppStoreInformation?, Error?)
    
    init(result: (AppStoreInformation?, Error?)) {
        self.result = result
    }
    
    func subscriptionInformation(_ callback: @escaping (AppStoreInformation?, Error?) -> Void) {
        callback(result.0, result.1)
    }
}
