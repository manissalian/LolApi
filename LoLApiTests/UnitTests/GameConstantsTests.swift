//
//  GameConstantsTests.swift
//  LoLApiTests
//
//  Created by Apple on 10/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import LoLApi

class GameConstantsTests: XCTestCase {
    func testLoadGameConstants() throws {
        let expectGameConstantsToBeLooaded = expectation(description: "Game constants are loaded")

        LolApi.loadGameConstants() {
            if LolApi.gameConstants.queues.count > 0 &&
                LolApi.gameConstants.seasons.count > 0 &&
                LolApi.gameConstants.maps.count > 0 &&
                LolApi.gameConstants.gameModes.count > 0 &&
                LolApi.gameConstants.gameTypes.count > 0 {
                expectGameConstantsToBeLooaded.fulfill()
            }
        }

        let result = XCTWaiter.wait(for: [expectGameConstantsToBeLooaded], timeout: 10)
        if result == XCTWaiter.Result.timedOut {
            XCTFail("Timed out")
        }
    }
}
