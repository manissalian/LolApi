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
}
