//
//  VpnConfigurationProviderTypeMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 28/12/23.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
@testable import VP_VPN_tvOS

class VpnConfigurationProviderTypeMock: VpnConfigurationProviderType {
    
    private let error: Error?
    
    init(error: Error?) {
        self.error = error
    }
    
    func install(force forceInstall: Bool, _ callback: SuccessLibraryCallback?) {
        callback?(error)
    }
    
    func uninstall(_ callback: VPLibrary.SuccessLibraryCallback?) {
        callback?(error)
    }
    
}
