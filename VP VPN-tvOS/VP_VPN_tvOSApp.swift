//
//  VP_VPN_tvOSApp.swift
//  VP VPN-tvOS
//
//  Created by Said Rehouni on 22/11/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import SwiftUI

@main
struct VP_VPN_tvOSApp: App {
    var body: some Scene {
        WindowGroup {
            RootContainerFactory.makeRootContainerView()
                .background(Color.pia_background)
                .preferredColorScheme(.dark) //Sets the UI to Dark Mode
        }
    }
}
