//
//  OptimalLocationUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Laura S on 2/20/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import Combine
@testable import VP_VPN_tvOS


class OptimalLocationUseCaseMock: OptimalLocationUseCaseType {
    
    var optimalLocation: ServerType = ServerMock()
    
    var targetLocationForOptimalLocation: CurrentValueSubject<ServerType?, Never> = CurrentValueSubject(nil)
    
    func getTargetLocaionForOptimalLocation() -> AnyPublisher<ServerType?, Never> {
        return targetLocationForOptimalLocation.eraseToAnyPublisher()
    }
    
    
}
