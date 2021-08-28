//
//  MatchApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class MatchApiTests: XCTestCase {
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func testGetMatchlist() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id")

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithChampionParameter() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with champion parameter")
        let parameters = MatchlistParameters(champion: [29, 89])

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with champion parameter")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithQueueParameter() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with queue parameter")
        let parameters = MatchlistParameters(queue: [420, 450])

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with queue parameter")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithSeasonParameter() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with season parameter")
        let parameters = MatchlistParameters(season: [13, 14])

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with season parameter")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithBeginAndEndTimeParameters() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with begin and end time parameters")
        let parameters = MatchlistParameters(beginTime: 1594503204764, endTime: 1594503204764)

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with begin and end time parameters")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithBeginIndexParameter() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with begin index parameter")
        let parameters = MatchlistParameters(beginIndex: 1)

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with begin index parameter")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetMatchlistWithEndIndexParameter() throws {
        let expectMatchlist = expectation(description: "Got matchlist successfully by account id with end index parameter")
        let parameters = MatchlistParameters(endIndex: 1)

        lolApi.match.getMatchlistByAccountId(id: TESTING_ACCOUNT_ID, parameters: parameters) { matchlist in
            if matchlist == nil {
                XCTFail("Error getting matchlist by account id with begin and end time parameters")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetAramMatchById() throws {
        let expectMatchlist = expectation(description: "Got aram match successfully by id")

        lolApi.match.getMatchById(id: "4873390416") { match in
            if match == nil {
                XCTFail("Error getting aram match by id")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func testGetNormalMatchById() throws {
        let expectMatchlist = expectation(description: "Got normal match successfully by id")

        lolApi.match.getMatchById(id: "4728103437") { match in
            if match == nil {
                XCTFail("Error getting normal match by id")
            }

            expectMatchlist.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectMatchlist], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
