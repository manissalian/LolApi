//
//  BannedChampion.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct BannedChampion: Decodable {
    public var championId: Int
    public var teamId: Int
    public var pickTurn: Int

    public init(championId: Int, teamId: Int, pickTurn: Int) {
        self.championId = championId
        self.teamId = teamId
        self.pickTurn = pickTurn
    }
}
