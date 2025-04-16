//
//  Client+Storyboard.swift
//  VP VPN
//
//  Created by Said Rehouni on 26/10/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import VPLibrary
import UIKit

extension Client {
    /**
     Returns the Signup Storyboard owned by the library to be used by the clients
     */
    public static func signupStoryboard() -> UIStoryboard {
        UIStoryboard(name: "Signup", bundle: Bundle.main)
    }
}
