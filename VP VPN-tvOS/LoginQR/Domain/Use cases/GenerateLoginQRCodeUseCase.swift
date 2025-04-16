//
//  GenerateLoginQRCodeUseCase.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 4/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

protocol GenerateLoginQRCodeUseCaseType {
    func callAsFunction() async throws -> LoginQRCode
}

class GenerateLoginQRCodeUseCase: GenerateLoginQRCodeUseCaseType {
    private let generateLoginQRCodeProvider: GenerateLoginQRCodeProviderType
    
    init(generateLoginQRCodeProvider: GenerateLoginQRCodeProviderType) {
        self.generateLoginQRCodeProvider = generateLoginQRCodeProvider
    }
    
    func callAsFunction() async throws -> LoginQRCode {
        try await generateLoginQRCodeProvider.generateLoginQRCodeToken()
    }
}
