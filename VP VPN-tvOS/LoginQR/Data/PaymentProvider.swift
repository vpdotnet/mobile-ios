//
//  PaymentProvider.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 20/5/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class PaymentProvider: PaymentProviderType {
    private let store: InAppProvider
    
    init(store: InAppProvider) {
        self.store = store
    }
    
    func refreshPaymentReceipt(_ completion: @escaping (Result<Data, Error>) -> Void) {
        store.refreshPaymentReceipt { [weak self] error in
            if let error {
                completion(.failure(error))
                return
            }
            
            guard let receipt = self?.store.paymentReceipt else {
                completion(.failure(ClientError.unexpectedReply))
                return
            }
            
            completion(.success(receipt))
        }
    }
}
