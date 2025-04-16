//
//  RegionsListUseTypeMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 1/18/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class RegionsListUseCaseMock: RegionsListUseCaseType {
    var getCurrentServersCalled = false
    var getCurrentServersCalledAttempt = 0
    var getCurrentServersResult: [ServerType] = []
    func getCurrentServers() -> [ServerType] {
        getCurrentServersCalled = true
        getCurrentServersCalledAttempt += 1
        return getCurrentServersResult
    }
    
    var selectServerCalled = false
    var selectServerCalledAttempt = 0
    var selectServerCalledWithArgument: ServerType?
    func select(server: ServerType) {
        selectServerCalled = true
        selectServerCalledAttempt += 1
        selectServerCalledWithArgument = server
    }
    
    
}
