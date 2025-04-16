//
//  InAppTransactionMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 30/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class InAppTransactionMock: InAppTransaction {
    var identifier: String?
    var native: Any?
    var description: String
    
    init(identifier: String? = nil, native: Any? = nil, description: String) {
        self.identifier = identifier
        self.native = native
        self.description = description
    }
}
