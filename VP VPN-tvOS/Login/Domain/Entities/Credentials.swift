//
//  Credentials.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 12/12/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

struct Credentials {
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

extension Credentials: Equatable {
    public static func == (lhs: Credentials, rhs: Credentials) -> Bool {
        lhs.username == rhs.username && lhs.password == rhs.password
    }
}
