//
//  ChampionMasteryApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class ChampionMasteryApiTests: XCTestCase {
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func testGetChampionMasteries() throws {
        let expectChampionMasteries = expectation(description: "Got champion masteries successfully by summoner id")

        lolApi.championMastery.getChampionMasteriesBySummonerId(id: TESTING_SUMMONER_ID) { masteries in
            if masteries == nil {
                XCTFail("Error getting champion masteries by summoner id")
            }

            expectChampionMasteries.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectChampionMasteries], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetChampionMastery() throws {
        let expectChampionMastery = expectation(description: "Got champion mastery successfully by summoner id")

        lolApi.championMastery.getChampionMasteryBySummonerId(id: TESTING_SUMMONER_ID, forChampion: 267) { mastery in
            if mastery == nil {
                XCTFail("Error getting champion mastery by summoner id")
            }

            expectChampionMastery.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectChampionMastery], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetChampionMasteryScores() throws {
        let expectChampionMasteryScores = expectation(description: "Got champion mastery scores uccessfully by summoner id")

        lolApi.championMastery.getChampionMasteryScoresBySummonerId(id: TESTING_SUMMONER_ID) { scores in
            if scores == nil {
                XCTFail("Error getting champion mastery scores by summoner id")
            }

            expectChampionMasteryScores.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectChampionMasteryScores], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
