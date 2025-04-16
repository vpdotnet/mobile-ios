//
//  ClientTypeMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 3/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class ClientTypeMock: ClientType {

    var pingServersCalled = false
    var pingServersCalledAttempt = 0
    var pingServersCalledWithServers:[ServerType] = []
    func ping(servers: [ServerType]) {
        pingServersCalled = true
        pingServersCalledAttempt += 1
        pingServersCalledWithServers = servers
    }
    
    
}
