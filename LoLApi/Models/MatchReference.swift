//
//  Match.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct MatchReference: Decodable {
    public var gameId: Int
    public var role: String
    public var season: Int
    public var platformId: String
    public var champion: Int
    public var queue: Int
    public var lane: String
    public var timestamp: Int

    public init(gameId: Int, role: String, season: Int, platformId: String, champion: Int, queue: Int, lane: String, timestamp: Int) {
        self.gameId = gameId
        self.role = role
        self.season = season
        self.platformId = platformId
        self.champion = champion
        self.queue = queue
        self.lane = lane
        self.timestamp = timestamp
    }
}
