//
//  PIAHotspotHelperTests.swift
//  VP VPNTests
//
//  Created by Jose Antonio Blaya Garcia on 18/12/2018.
//  Copyright © 2020 Private Internet Access, Inc.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//
//  This file is part of the VP.NET iOS Client.
//
//  The VP.NET iOS Client is free software: you can redistribute it and/or
//  modify it under the terms of the GNU General Public License as published by the Free
//  Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//  The VP.NET iOS Client is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License along with the Private
//  Internet Access iOS Client.  If not, see <https://www.gnu.org/licenses/>.
//

import XCTest
import VPLibrary
@testable import VP_VPN

class PIAHotspotHelperTests: XCTestCase {

    private var hotspotHelper: PIAHotspotHelper!
    
    override func setUp() {
        super.setUp()
        hotspotHelper = PIAHotspotHelper()
    }

    override func tearDown() {
        hotspotHelper = nil
        super.tearDown()
    }
    
    func testRetrieveCurrentNetworkListIsEmpty() {
        XCTAssertTrue(hotspotHelper.retrieveCurrentNetworkList().isEmpty)
    }
    
    func testTrustedNetworkArray() {
        var trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.isEmpty)
        let currentSSID = "WIFI_HOME_5G"
        hotspotHelper.saveTrustedNetwork(currentSSID)
        trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.count == 1)
        hotspotHelper.clearTrustedNetworkList()
        trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.isEmpty)
    }
    
    func testRemoveTrustedNetworkArray() {
        hotspotHelper.clearTrustedNetworkList()
        var trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.isEmpty)
        let currentSSID = "WIFI_HOME_5G"
        hotspotHelper.saveTrustedNetwork(currentSSID)
        trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.count == 1)
        hotspotHelper.removeTrustedNetwork(currentSSID)
        trustedNetworks = hotspotHelper.trustedNetworks()
        XCTAssertTrue(trustedNetworks.isEmpty)

    }
    
    func testConfiguration() {
        /*
        #if arch(i386) || arch(x86_64)
        XCTAssertTrue(true)
        #else
        var pref = Client.preferences.editable()
        pref.nmtRulesEnabled = true
        pref.commit()
        
        var response = hotspotHelper.configureHotspotHelper()
        XCTAssertTrue(response)
        
        pref = Client.preferences.editable()
        pref.nmtRulesEnabled = false
        pref.commit()
        
        response = hotspotHelper.configureHotspotHelper()
        XCTAssertFalse(response)
        #endif
         */
    }
}
