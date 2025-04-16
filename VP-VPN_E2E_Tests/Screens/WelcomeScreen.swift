//
//  WelcomeScreen.swift
//  VP-VPN_E2E_Tests
//
//  Created by Geneva Parayno on 24/10/23.
//  Copyright © 2023 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import XCTest

extension XCUIApplication {
    var welcomeLoginButton: XCUIElement {button(with: VPLibraryAccessibility.Id.Login.submitNew)}
    var welcomeLoginButtonOldVersion: XCUIElement {button(with: VPLibraryAccessibility.Id.Login.submit)}
    
    func navigateToLoginScreen() {
        if (welcomeLoginButton.waitForElementToAppear()) {
            welcomeLoginButton.tap()
        }
        else if (welcomeLoginButtonOldVersion.waitForElementToAppear()){
            welcomeLoginButtonOldVersion.tap()
        }
        
        XCTAssertTrue(loginButton.waitForElementToAppear())
    }
}
