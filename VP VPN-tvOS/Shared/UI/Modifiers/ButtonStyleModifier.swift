//
//  ButtonStyleModifier.swift
//  VP VPN-tvOS
//
//  Created by Laura S on 2/12/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import SwiftUI


struct BasicButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
    }
}
