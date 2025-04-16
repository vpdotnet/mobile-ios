//
//  LoginQRErrorMapper.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 13/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class LoginQRErrorMapper {
    func map(error: ClientError?) -> LoginQRCodeError {
        guard let error = error else { return .generic }
        
        switch error {
            case .expired:
                return .expired
            default:
                return .generic
        }
    }
}
