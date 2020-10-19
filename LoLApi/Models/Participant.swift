//
//  Participant.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Participant: Decodable {
    public var participantId: Int
    public var teamId: Int
    public var championId: Int
    public var spell1Id: Int
    public var spell2Id: Int
    public var stats: ParticipantStats
    public var runes: [Rune]?
    public var timeline: ParticipantTimeline
    public var highestAchievedSeasonTier: String?
    public var masteries: [Mastery]?
}
