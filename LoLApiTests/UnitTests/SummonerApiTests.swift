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
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func testGetSummonerByName() throws {
        let expect = expectation(description: "Got summoner successfully")

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

    func testGetSummonerByAccountId() throws {
        let expect = expectation(description: "Got summoner successfully")

        lolApi.summoner.getSummonerByAccountId(id: "4CTJNXQHPPoZx49ph3aeffovrf9d3KQp_-2G8pDDZI3iLFs") { summoner in
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

    func testGetSummonerByPUUID() throws {
        let expect = expectation(description: "Got summoner successfully")

        lolApi.summoner.getSummonerByPUUID(id: "T-3Xrxnw2pZRU6icEp2BNZJ5SmOpjhVoJHRl73htK0ZeRjtvbDjv5B2VvcPl-oeIFUndBbmx6z7vWg") { summoner in
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
