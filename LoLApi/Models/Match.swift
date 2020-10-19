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
}
