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

    func testGetSummoner() throws {
        let expectByName = expectation(description: "Got summoner successfully by name")
        let expectByAccountId = expectation(description: "Got summoner successfully by account id")
        let expectByPUUID = expectation(description: "Got summoner successfully by puuid")
        let expectBySummonerId = expectation(description: "Got summoner successfully by summoner id")

        lolApi.summoner.getSummonerByName(name: "callbackfunction") { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner by name")
            }

            expectByName.fulfill()
        }

        lolApi.summoner.getSummonerByAccountId(id: TESTING_ACCOUNT_ID) { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner by account id")
            }

            expectByAccountId.fulfill()
        }

        lolApi.summoner.getSummonerByPUUID(id: TESTING_PUUID) { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner by puuid")
            }

            expectByPUUID.fulfill()
        }

        lolApi.summoner.getSummonerBySummonerId(id: TESTING_SUMMONER_ID) { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner by puuid")
            }

            expectBySummonerId.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectByName, expectByAccountId, expectByPUUID, expectBySummonerId], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
