//
//  LeagueApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class LeagueApiTests: XCTestCase {
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func testGetChallengerLeaguesByQueue() throws {
        let expectChallengerLeagues = expectation(description: "Got challenger leagues successfully by queue")

        lolApi.league.getChallengerLeaguesByQueue(queue: QueueType.SOLO) { league in
            if league == nil {
                XCTFail("Error getting challenger leagues by queue")
            }

            expectChallengerLeagues.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectChallengerLeagues], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetGrandmasterLeaguesByQueue() throws {
        let expectGrandmasterLeagues = expectation(description: "Got grandmaster leagues successfully by queue")

        lolApi.league.getGrandmasterLeaguesByQueue(queue: QueueType.SOLO) { league in
            if league == nil {
                XCTFail("Error getting grandmaster leagues by queue")
            }

            expectGrandmasterLeagues.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectGrandmasterLeagues], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMasterLeaguesByQueue() throws {
        let expectMasterLeagues = expectation(description: "Got master leagues successfully by queue")

        lolApi.league.getMasterLeaguesByQueue(queue: QueueType.SOLO) { league in
            if league == nil {
                XCTFail("Error getting master leagues by queue")
            }

            expectMasterLeagues.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMasterLeagues], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetLeagueById() throws {
        let expectLeague = expectation(description: "Got league successfully by id")

        lolApi.league.getLeagueById(id: "329fc2da-bd66-41a0-8091-76551e9716c3") { league in
            if league == nil {
                XCTFail("Error getting league by id")
            }

            expectLeague.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectLeague], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetEntries() throws {
        let expectEntries = expectation(description: "Got entries successfully")

        lolApi.league.getEntries(queue: QueueType.SOLO, tier: "DIAMOND", division: "I") { entries in
            if entries == nil {
                XCTFail("Error getting entry by summonerId")
            }

            expectEntries.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectEntries], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetEntriesBySummonerId() throws {
        let expectEntries = expectation(description: "Got entries successfully by summonerId")

        lolApi.league.getEntriesBySummonerId(id: "Ek_o_6WjC31B24ZJtxaDjp37dO5Ksh8rGq319EyaPvHdgu0") { entries in
            if entries == nil {
                XCTFail("Error getting entry by summonerId")
            }

            expectEntries.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectEntries], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
