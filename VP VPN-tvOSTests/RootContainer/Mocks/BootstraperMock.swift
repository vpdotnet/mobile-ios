//
//  BootstraperMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 20/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class BootstraperMock: BootstraperType {
    var callAsFunctionTimesCalled = 0
    
    func callAsFunction() {
        callAsFunctionTimesCalled += 1
    }
}
