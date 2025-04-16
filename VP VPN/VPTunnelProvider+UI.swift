//
//  VPTunnelProvider+UI.swift
//  VP VPN
//
//  Created by Davide De Rosa on 12/22/17.
//  Copyright © 2020 Private Internet Access, Inc.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//
//  This file is part of the VP.NET iOS Client.
//
//  The VP.NET iOS Client is free software: you can redistribute it and/or
//  modify it under the terms of the GNU General Public License as published by the Free
//  Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//  The VP.NET iOS Client is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License along with the Private
//  Internet Access iOS Client.  If not, see <https://www.gnu.org/licenses/>.
//

import Foundation
import TunnelKitCore
import TunnelKitOpenVPN

extension SocketType: CustomStringConvertible {
    public var description: String {
        return rawValue
    }
}

extension OpenVPN.Cipher: CustomStringConvertible {
    public var description: String {
        return rawValue
    }
}

extension OpenVPN.Digest: CustomStringConvertible {
    public var description: String {
        return "HMAC-\(rawValue)"
    }
}
