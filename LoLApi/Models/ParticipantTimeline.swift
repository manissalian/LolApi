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
}
