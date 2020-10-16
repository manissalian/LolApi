//
//  SummonerApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class SummonerApiTests: XCTestCase {
    func testGetSummonerByName() throws {
        let expect = expectation(description: "Got summoner successfully")
        let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

        lolApi.summoner.getSummonerByName(name: "callbackfunction") { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner")
            }

            expect.fulfill()
        }

        let result = XCTWaiter.wait(for: [expect], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
