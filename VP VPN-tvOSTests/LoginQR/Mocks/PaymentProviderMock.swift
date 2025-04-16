//
//  PaymentProviderMock.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 21/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
@testable import VP_VPN_tvOS

class PaymentProviderMock: PaymentProviderType {
    private let result: Result<Data, any Error>
    
    init(result: Result<Data, any Error>) {
        self.result = result
    }
    
    func refreshPaymentReceipt(_ completion: @escaping (Result<Data, Error>) -> Void) {
        completion(result)
    }
}
