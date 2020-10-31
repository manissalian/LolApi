//
//  ChampionRotationsApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class ChampionRotationsApiTests: XCTestCase {
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func testGetChampionRotations() throws {
        let expectChampionRotations = expectation(description: "Got champion rotations successfully")

        lolApi.championRotations.getChampionRotations { championRotations in
            if championRotations == nil {
                XCTFail("Error getting champion rotations")
            }

            expectChampionRotations.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectChampionRotations], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
