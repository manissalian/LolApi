//
//  FeaturedGameInfo.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct FeaturedGameInfo: Decodable {
    public var gameId: Int
    public var mapId: Int
    public var gameMode: String
    public var gameType: String
    public var gameQueueConfigId: Int
    public var participants: [FeaturedParticipant]
    public var observers: Observer
    public var platformId: String
    public var gameTypeConfigId: Int
    public var bannedChampions: [BannedChampion]
    public var gameStartTime: Int
    public var gameLength: Int

    public init(gameId: Int, mapId: Int, gameMode: String, gameType: String, gameQueueConfigId: Int, participants: [FeaturedParticipant], observers: Observer, platformId: String, gameTypeConfigId: Int, bannedChampions: [BannedChampion], gameStartTime: Int, gameLength: Int) {
        self.gameId = gameId
        self.mapId = mapId
        self.gameMode = gameMode
        self.gameType = gameType
        self.gameQueueConfigId = gameQueueConfigId
        self.participants = participants
        self.observers = observers
        self.platformId = platformId
        self.gameTypeConfigId = gameTypeConfigId
        self.bannedChampions = bannedChampions
        self.gameStartTime = gameStartTime
        self.gameLength = gameLength
    }
}
