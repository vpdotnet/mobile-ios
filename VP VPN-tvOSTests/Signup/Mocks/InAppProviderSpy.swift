//
//  InAppProviderSpy.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 19/4/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class InAppProviderSpy: InAppProvider {
    var startObservingTransactionsCalledAttempt = 0
    var refreshPaymentReceiptCalledAttempt = 0
    var availableProducts: [InAppProduct]?
    var paymentReceipt: Data?
    var hasUncreditedTransactions: Bool = false
    
    func startObservingTransactions() {
        startObservingTransactionsCalledAttempt += 1
    }
    
    func stopObservingTransactions() {}
    func fetchProducts(identifiers: [String], _ callback: LibraryCallback<[InAppProduct]>?) {}
    func purchaseProduct(_ product: InAppProduct, _ callback: LibraryCallback<InAppTransaction>?) {}
    func uncreditedTransaction(for product: InAppProduct) -> InAppTransaction? { nil }
    func finishTransaction(_ transaction: InAppTransaction, success: Bool) {}
    func refreshPaymentReceipt(_ callback: SuccessLibraryCallback?) {
        refreshPaymentReceiptCalledAttempt += 1
        callback?(nil)
    }
}
