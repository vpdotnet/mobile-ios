//
//  UserAuthenticationStatusMonitorMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 21/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import Combine
@testable import VP_VPN_tvOS

class UserAuthenticationStatusMonitorMock: UserAuthenticationStatusMonitorType {
    var status: CurrentValueSubject<UserAuthenticationStatus, Never>
    
    init(status: UserAuthenticationStatus) {
        self.status = CurrentValueSubject<UserAuthenticationStatus, Never>(status)
    }
    
    func getStatus() -> AnyPublisher<UserAuthenticationStatus, Never> {
        return status.eraseToAnyPublisher()
    }
}
