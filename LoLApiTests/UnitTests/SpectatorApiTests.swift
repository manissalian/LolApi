//
//  SpectatorApiTests.swift
//  LoLApiTests
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

var summonerName: String?
class SpectatorApiTests: XCTestCase {
    let lolApi = LolApi(key: TESTING_API_KEY, server: LolServer.EUW)

    func test1GetFeaturedGames() throws {
        let expectFeaturedGames = expectation(description: "Got featured games successfully")

        lolApi.spectator.getFeaturedGames { featuredGames in
            if featuredGames == nil {
                XCTFail("Error getting featured games")
            }

            summonerName = featuredGames?.gameList[0].participants[0].summonerName

            expectFeaturedGames.fulfill()
        }

        let result = XCTWaiter.wait(for: [expectFeaturedGames], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }

    func test2GetActiveGameBySummonerId() throws {
        let expectActiveGame = expectation(description: "Got active game successfully by summonerId")

        guard let name = summonerName else {
            XCTFail("SummonerName is nil")
            return
        }

        lolApi.summoner.getSummonerByName(name: name) { summoner in
            if summoner == nil {
                XCTFail("Error getting summoner by name")
                expectActiveGame.fulfill()
            } else {
                self.lolApi.spectator.getActiveGameBySummonerId(id: summoner!.id) { activeGame in
                    if activeGame == nil {
                        XCTFail("Error getting active game by summonerId")
                    }

                    expectActiveGame.fulfill()
                }
            }
        }

        let result = XCTWaiter.wait(for: [expectActiveGame], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
