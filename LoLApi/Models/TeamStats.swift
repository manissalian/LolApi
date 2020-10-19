//
//  TeamStats.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct TeamStats: Decodable {
    public var teamId: Int
    public var win: String
    public var firstBlood: Bool
    public var firstTower: Bool
    public var firstInhibitor: Bool
    public var firstBaron: Bool
    public var firstDragon: Bool
    public var firstRiftHerald: Bool
    public var towerKills: Int
    public var inhibitorKills: Int
    public var baronKills: Int
    public var dragonKills: Int
    public var vilemawKills: Int
    public var riftHeraldKills: Int
    public var bans: [TeamBans]
    public var dominionVictoryScore: Int?

    public init(teamId: Int, win: String, firstBlood: Bool, firstTower: Bool, firstInhibitor: Bool, firstBaron: Bool, firstDragon: Bool, firstRiftHerald: Bool, towerKills: Int, inhibitorKills: Int, baronKills: Int, dragonKills: Int, vilemawKills: Int, riftHeraldKills: Int, bans: [TeamBans], dominionVictoryScore: Int? = nil) {
        self.teamId = teamId
        self.win = win
        self.firstBlood = firstBlood
        self.firstTower = firstTower
        self.firstInhibitor = firstInhibitor
        self.firstBaron = firstBaron
        self.firstDragon = firstDragon
        self.firstRiftHerald = firstRiftHerald
        self.towerKills = towerKills
        self.inhibitorKills = inhibitorKills
        self.baronKills = baronKills
        self.dragonKills = dragonKills
        self.vilemawKills = vilemawKills
        self.riftHeraldKills = riftHeraldKills
        self.bans = bans
        self.dominionVictoryScore = dominionVictoryScore
    }
}
