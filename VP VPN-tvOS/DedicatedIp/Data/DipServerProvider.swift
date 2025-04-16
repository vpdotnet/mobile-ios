//
//  DipServerProvider.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 14/2/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

protocol DipServerProviderType {
    func activateDIPToken(_ token: String, _ callback: LibraryCallback<Server?>?)
    func removeDIPToken(_ dipToken: String)
    func handleDIPTokenExpiration(dipToken: String, _ callback: SuccessLibraryCallback?)
    func getDIPTokens() -> [String]
}

extension DefaultServerProvider: DipServerProviderType {
    func getDIPTokens() -> [String] {
        dipTokens ?? []
    }
}
