//
//  InstallVPNConfigurationUseCaseMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 28/12/23.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

class InstallVPNConfigurationUseCaseMock: InstallVPNConfigurationUseCaseType {
    private let error: InstallVPNConfigurationError?
    var onSuccessAction: (() -> Void)?
    
    init(error: InstallVPNConfigurationError?, onSuccessAction: (() -> Void)? = nil) {
        self.error = error
        self.onSuccessAction = onSuccessAction
    }
    
    func callAsFunction() async throws {
        guard let error = error else {
            onSuccessAction?()
            return
        }
        
        throw error
    }
}
