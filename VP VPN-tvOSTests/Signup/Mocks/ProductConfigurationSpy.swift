//
//  ProductConfigurationSpy.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 19/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
@testable import VP_VPN_tvOS

class ProductConfigurationSpy: ProductConfigurationType {
    var setPlanCalledAttempt = 0
    var capturedProducts = [Plan : String]()
    
    func setPlan(_ plan: Plan, forProductIdentifier productIdentifier: String) {
        capturedProducts[plan] = productIdentifier
        setPlanCalledAttempt += 1
    }
}
