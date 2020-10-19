//
//  ParticipantIdentity.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ParticipantIdentity: Decodable {
    public var participantId: Int
    public var player: Player
}
