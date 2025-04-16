//
//  ConnectionStatsPermissonType.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 9/2/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

protocol ConnectionStatsPermissonType {
    func get() -> Bool?
    func set(value: Bool?)
}
