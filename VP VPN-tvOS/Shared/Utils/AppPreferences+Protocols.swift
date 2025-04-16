//
//  AppPreferences+Protocols.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 2/15/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

protocol AppPreferencesType {
    func reset()
}

extension AppPreferences: AppPreferencesType {
}
