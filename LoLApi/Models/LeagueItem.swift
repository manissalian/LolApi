//
//  LeagueItem.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct LeagueItem: Decodable {
    public var summonerId: String
    public var summonerName: String
    public var leaguePoints: Int
    public var rank: String
    public var wins: Int
    public var losses: Int
    public var veteran: Bool
    public var inactive: Bool
    public var freshBlood: Bool
    public var hotStreak: Bool
    public var miniSeries: MiniSeries?

    public init(summonerId: String, summonerName: String, leaguePoints: Int, rank: String, wins: Int, losses: Int, veteran: Bool, inactive: Bool, freshBlood: Bool, hotStreak: Bool, miniSeries: MiniSeries? = nil) {
        self.summonerId = summonerId
        self.summonerName = summonerName
        self.leaguePoints = leaguePoints
        self.rank = rank
        self.wins = wins
        self.losses = losses
        self.veteran = veteran
        self.inactive = inactive
        self.freshBlood = freshBlood
        self.hotStreak = hotStreak
        self.miniSeries = miniSeries
    }
}
