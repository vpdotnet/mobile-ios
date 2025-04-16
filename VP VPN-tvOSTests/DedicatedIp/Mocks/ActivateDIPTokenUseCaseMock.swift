//
//  ActivateDIPTokenUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 20/2/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class ActivateDIPTokenUseCaseMock: ActivateDIPTokenUseCaseType {
    var error: Error?
    
    func callAsFunction(token: String) async throws {
        if let error = error {
            throw error
        }
    }
}
