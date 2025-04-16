//
//  VPNStatusMonitorMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 22/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import Combine
import VPLibrary
@testable import VP_VPN_tvOS

class VPNStatusMonitorMock: VPNStatusMonitorType {
    var status = PassthroughSubject<VPNStatus, Never>()
    
    func getStatus() -> AnyPublisher<VPNStatus, Never> {
        return status.eraseToAnyPublisher()
    }
}
