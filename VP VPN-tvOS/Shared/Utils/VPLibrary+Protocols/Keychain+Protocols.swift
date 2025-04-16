//
//  Keychain+Protocols.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 1/26/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

protocol KeychainType {
    func getFavorites() throws -> [String]
    func set(favorites: [String]) throws
    func eraseAllFavorites() throws
    
    // Add methods from `Keychain` class as needed
}


extension Keychain: KeychainType {
    func eraseAllFavorites() throws {
        try set(favorites: [])
    }
}
