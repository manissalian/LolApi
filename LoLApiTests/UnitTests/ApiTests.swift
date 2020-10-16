//
//  ApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class ApiTests: XCTestCase {
    func testApiInitializer() throws {
        let key = "key"
        let server = LolServer.EUW
        let lolApi = LolApi(key: key, server: server)
        XCTAssertTrue(lolApi.apiKey == key)
        XCTAssertTrue(lolApi.server == server)
    }
}
