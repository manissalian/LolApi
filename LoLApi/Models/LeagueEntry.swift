//
//  LeagueEntry.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct LeagueEntry: Decodable {
    public var leagueId: String
    public var queueType: String
    public var tier: String
    public var rank: String
    public var summonerId: String
    public var summonerName: String
    public var leaguePoints: Int
    public var wins: Int
    public var losses: Int
    public var veteran: Bool
    public var inactive: Bool
    public var freshBlood: Bool
    public var hotStreak: Bool
    public var miniSeries: MiniSeries?

    public init(leagueId: String, queueType: String, tier: String, rank: String, summonerId: String, summonerName: String, leaguePoints: Int, wins: Int, losses: Int, veteran: Bool, inactive: Bool, freshBlood: Bool, hotStreak: Bool, miniSeries: MiniSeries? = nil) {
        self.leagueId = leagueId
        self.queueType = queueType
        self.tier = tier
        self.rank = rank
        self.summonerId = summonerId
        self.summonerName = summonerName
        self.leaguePoints = leaguePoints
        self.wins = wins
        self.losses = losses
        self.veteran = veteran
        self.inactive = inactive
        self.freshBlood = freshBlood
        self.hotStreak = hotStreak
        self.miniSeries = miniSeries
    }
}
