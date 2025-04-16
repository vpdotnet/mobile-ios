//
//  SearchedRegionsAvailabilityMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 2/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class SearchedRegionsAvailabilityMock: SearchedRegionsAvailabilityType {
    
    var eraseAllCalled = false
    var eraseAllCalledAttempt = 0
    func eraseAll() {
        eraseAllCalled = true
        eraseAllCalledAttempt += 1
    }
    
    var getCalled = false
    var getCalledAttempt = 0
    var getResult:[String] = []
    func get() -> [String] {
        getCalled = true
        getCalledAttempt += 1
        return getResult
    }
    
    
    var setCalled = false
    var setCalledAttepmt = 0
    var setCalledWithArgument: [String]!
    func set(value: [String]) {
        setCalled = true
        setCalledAttepmt += 1
        setCalledWithArgument = value
    }
    
    
}
