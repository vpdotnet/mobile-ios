//
//  StateMonitorsFactory.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 19/1/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary

class StateMonitorsFactory {
    static var makeUserAuthenticationStatusMonitor: UserAuthenticationStatusMonitorType = {
        UserAuthenticationStatusMonitor(currentStatus: Client.providers.accountProvider.isLoggedIn ? .loggedIn : .loggedOut,
                                        notificationCenter: NotificationCenter.default)
    }()
    
    static var makeVPNStatusMonitor: VPNStatusMonitorType = {
        return VPNStatusMonitor(vpnStatusProvider: VpnConnectionFactory.makeVpnProvider,
                                notificationCenter: NotificationCenter.default)
    }()
    
    static var makeConnectionStateMonitor: ConnectionStateMonitorType = {
        return ConnectionStateMonitor(vpnStatusMonitor: makeVPNStatusMonitor, vpnConnectionUseCase: VpnConnectionFactory.makeVpnConnectionUseCase)
    }()
    
}

