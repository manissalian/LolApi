//
//  ParticipantTimeline.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ParticipantTimeline: Decodable {
    public var participantId: Int
    public var creepsPerMinDeltas: [String: Double]
    public var xpPerMinDeltas: [String: Double]
    public var goldPerMinDeltas: [String: Double]
    public var csDiffPerMinDeltas: [String: Double]
    public var xpDiffPerMinDeltas: [String: Double]
    public var damageTakenPerMinDeltas: [String: Double]
    public var damageTakenDiffPerMinDeltas: [String: Double]
    public var role: String
    public var lane: String

    public init(participantId: Int, creepsPerMinDeltas: [String : Double], xpPerMinDeltas: [String : Double], goldPerMinDeltas: [String : Double], csDiffPerMinDeltas: [String : Double], xpDiffPerMinDeltas: [String : Double], damageTakenPerMinDeltas: [String : Double], damageTakenDiffPerMinDeltas: [String : Double], role: String, lane: String) {
        self.participantId = participantId
        self.creepsPerMinDeltas = creepsPerMinDeltas
        self.xpPerMinDeltas = xpPerMinDeltas
        self.goldPerMinDeltas = goldPerMinDeltas
        self.csDiffPerMinDeltas = csDiffPerMinDeltas
        self.xpDiffPerMinDeltas = xpDiffPerMinDeltas
        self.damageTakenPerMinDeltas = damageTakenPerMinDeltas
        self.damageTakenDiffPerMinDeltas = damageTakenDiffPerMinDeltas
        self.role = role
        self.lane = lane
    }
}
