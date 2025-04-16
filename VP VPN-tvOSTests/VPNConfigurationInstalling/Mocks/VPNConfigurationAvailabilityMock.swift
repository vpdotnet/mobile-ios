//
//  VPNConfigurationAvailabilityMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 2/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class VPNConfigurationAvailabilityMock: VPNConfigurationAvailabilityType {
    var settedValues = [Bool]()
    private let value: Bool
    
    init(value: Bool) {
        self.value = value
    }
    
    func get() -> Bool {
        return value
    }
    
    func set(value: Bool) {
        settedValues.append(value)
    }
}
