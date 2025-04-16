//
//  ValidateLoginQRCodeProviderType.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 10/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

protocol ValidateLoginQRCodeProviderType {
    func validateLoginQRCodeToken(_ qrCodeToken: LoginQRCode) async throws -> String
}
