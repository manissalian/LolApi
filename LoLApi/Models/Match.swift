//
//  Match.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Match: Decodable {
    public var gameId: Int
    public var platformId: String
    public var gameCreation: Int
    public var gameDuration: Int
    public var queueId: Int
    public var mapId: Int
    public var seasonId: Int
    public var gameVersion: String
    public var gameMode: String
    public var gameType: String
    public var teams: [TeamStats]
    public var participants: [Participant]
    public var participantIdentities: [ParticipantIdentity]

    public init(gameId: Int, platformId: String, gameCreation: Int, gameDuration: Int, queueId: Int, mapId: Int, seasonId: Int, gameVersion: String, gameMode: String, gameType: String, teams: [TeamStats], participants: [Participant], participantIdentities: [ParticipantIdentity]) {
        self.gameId = gameId
        self.platformId = platformId
        self.gameCreation = gameCreation
        self.gameDuration = gameDuration
        self.queueId = queueId
        self.mapId = mapId
        self.seasonId = seasonId
        self.gameVersion = gameVersion
        self.gameMode = gameMode
        self.gameType = gameType
        self.teams = teams
        self.participants = participants
        self.participantIdentities = participantIdentities
    }
}
