//
//  AppRouterFactory.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 1/12/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation

class AppRouterFactory {
    static func makeAppRouter() -> AppRouter {
        return AppRouter.shared
    }
}
