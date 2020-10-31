//
//  ChampionInfo.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ChampionRotations: Decodable {
    public var maxNewPlayerLevel: Int
    public var freeChampionIdsForNewPlayers: [Int]
    public var freeChampionIds: [Int]

    public init(maxNewPlayerLevel: Int, freeChampionIdsForNewPlayers: [Int], freeChampionIds: [Int]) {
        self.maxNewPlayerLevel = maxNewPlayerLevel
        self.freeChampionIdsForNewPlayers = freeChampionIdsForNewPlayers
        self.freeChampionIds = freeChampionIds
    }
}
