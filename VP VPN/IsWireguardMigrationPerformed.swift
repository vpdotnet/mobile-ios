//
//  WasWireguardMigrationPerformed.swift
//  VP VPN
//
//  Created by Juan Docal on 2024-02-05.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class IsWireguardMigrationPerformed {

    private let preferences: Client.Preferences

    init(preferences: Client.Preferences) {
        self.preferences = preferences
    }

    func callAsFunction() -> Bool {
        return preferences.wireguardMigrationPerformed
    }
}
