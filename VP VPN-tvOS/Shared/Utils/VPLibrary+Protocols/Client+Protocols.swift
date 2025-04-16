//
//  Client+Protocols.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 3/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

protocol ClientType {
    func ping(servers: [ServerType])
}

final class ClientAdapter: ClientType {
    func ping(servers: [ServerType]) {
        guard let serversToPing = servers as? [Server] else { return }
        Client.ping(servers: serversToPing)
    }
}



