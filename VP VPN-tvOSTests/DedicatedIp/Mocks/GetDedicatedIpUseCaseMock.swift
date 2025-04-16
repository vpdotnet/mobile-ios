//
//  GetDedicatedIpUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 20/2/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class GetDedicatedIpUseCaseMock: GetDedicatedIpUseCaseType {
    
    private let result: ServerType?
    
    init(result: ServerType?) {
        self.result = result
    }
    
    var callAsFunctionCalled = false
    var callAsFunctionCalledAttempt = 0
    func callAsFunction() -> ServerType? {
        callAsFunctionCalled = true
        callAsFunctionCalledAttempt += 1
        return result
    }
    
    var isDedicatedIpCalled = false
    var isDedicatedIpCalledAttempt = 0
    func isDedicatedIp(_ server: ServerType) -> Bool {
        isDedicatedIpCalled = true
        isDedicatedIpCalledAttempt += 1
        return result?.identifier == server.identifier
    }
}
