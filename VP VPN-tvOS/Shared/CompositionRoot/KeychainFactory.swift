//
//  KeychainFactory.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 1/26/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class KeychainFactory {
    static func makeKeychain() -> KeychainType {
        return Keychain(team: AppConstants.teamId, group: AppConstants.appGroup)
    }
}
