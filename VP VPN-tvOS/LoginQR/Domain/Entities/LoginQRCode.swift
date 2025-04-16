//
//  LoginQRCode.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 5/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

public struct LoginQRCode {
    let token: String
    var url: URL? {
        URL(string: "piavpn:loginqr?token=\(token)")
    }
    let expiresAt: Date
}
