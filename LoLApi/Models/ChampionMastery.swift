//
//  ChampionMastery.swift
//  LoLApi
//
//  Created by Apple on 10/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ChampionMastery: Decodable {
    public var championId: Int
    public var championLevel: Int
    public var championPoints: Int
    public var lastPlayTime: Int
    public var championPointsSinceLastLevel: Int
    public var championPointsUntilNextLevel: Int
    public var chestGranted: Bool
    public var tokensEarned: Int
    public var summonerId: String

    internal init(championId: Int, championLevel: Int, championPoints: Int, lastPlayTime: Int, championPointsSinceLastLevel: Int, championPointsUntilNextLevel: Int, chestGranted: Bool, tokensEarned: Int, summonerId: String) {
        self.championId = championId
        self.championLevel = championLevel
        self.championPoints = championPoints
        self.lastPlayTime = lastPlayTime
        self.championPointsSinceLastLevel = championPointsSinceLastLevel
        self.championPointsUntilNextLevel = championPointsUntilNextLevel
        self.chestGranted = chestGranted
        self.tokensEarned = tokensEarned
        self.summonerId = summonerId
    }
}
