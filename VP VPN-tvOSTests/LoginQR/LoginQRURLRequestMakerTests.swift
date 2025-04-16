//
//  LoginQRURLRequestMakerTests.swift
//  VP VPN-tvOSTests
//
//  Created by Said Rehouni on 13/3/24.
//  Copyright © 2024 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import XCTest
@testable import VP_VPN_tvOS

final class LoginQRURLRequestMakerTests: XCTestCase {

    func test_makeGenerateLoginQRURLRequest() {
        // GIVEN
        let sut = LoginQRURLRequestMaker()
        
        // WHEN
        let urlRequest = sut.makeGenerateLoginQRURLRequest()
        
        // THEN
        XCTAssertEqual(urlRequest.httpMethod, "POST")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?["application/json"], "accept")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?["User-Agent"], "VP VPN")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?.keys.count, 2)
        XCTAssertEqual(urlRequest.url, URL(string: "https://vp.net/api/client/v5/login_token"))
    }
    
    func test_makeValidateLoginQRURLRequest() {
        // GIVEN
        let sut = LoginQRURLRequestMaker()
        
        // WHEN
        let urlRequest = sut.makeValidateLoginQRURLRequest(loginQRToken: "token")
        
        // THEN
        XCTAssertEqual(urlRequest.httpMethod, "POST")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?["application/json"], "accept")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?["Authorization"], "Bearer token")
        XCTAssertEqual(urlRequest.allHTTPHeaderFields?.keys.count, 2)
        XCTAssertEqual(urlRequest.url, URL(string: "https://vp.net/api/client/v5/login_token/auth"))
    }
}
