//
//  RegionsListUseCase.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 1/15/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary


protocol RegionsListUseCaseType {
    func getCurrentServers() -> [ServerType]
    func select(server: ServerType)
}

class RegionsListUseCase: RegionsListUseCaseType {

    private let serverProvider: ServerProviderType
    private var clientPreferences: ClientPreferencesType
    private let vpnConnectionUseCase: VpnConnectionUseCaseType
    
    init(serverProvider: ServerProviderType, clientPreferences: ClientPreferencesType, vpnConnectionUseCase: VpnConnectionUseCaseType) {
        self.serverProvider = serverProvider
        self.clientPreferences = clientPreferences
        self.vpnConnectionUseCase = vpnConnectionUseCase
    }
    
    func getCurrentServers() -> [ServerType] {
        return serverProvider.currentServersType
    }
    
    func select(server: ServerType) {
        clientPreferences.selectedServer = server
        Task {
            do {
                try await vpnConnectionUseCase.connect()
            } catch {
                // TODO: Handle error
                NSLog("Connection error after selecting server: \(error)")
            }
            
            
        }
        
    }
    
}
