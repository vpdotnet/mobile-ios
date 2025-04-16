//
//  ServerProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 2/13/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class ServerProviderMock: ServerProviderType {
    
    var historicalServersTypeResult:[ServerType] = []
    var historicalServersType: [ServerType] {
        historicalServersTypeResult
    }
    
    var targetServerTypeResult: ServerType = ServerMock()
    var targetServerType: ServerType {
        targetServerTypeResult
    }
    
    var currentServersTypeResult: [ServerType] = []
    var currentServersType: [ServerType] {
        currentServersTypeResult
    }
    
    
}
