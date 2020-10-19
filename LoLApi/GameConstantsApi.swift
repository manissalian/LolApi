//
//  GameConstantsApi.swift
//  LoLApi
//
//  Created by Apple on 10/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct GameConstantsApi {
    public var queues: [Queue] {
        return GameConstants.shared.queues
    }

    public var seasons: [Season] {
        return GameConstants.shared.seasons
    }

    public var maps: [Map] {
        return GameConstants.shared.maps
    }

    public var gameModes: [GameMode] {
        return GameConstants.shared.gameModes
    }

    public var gameTypes: [GameType] {
        return GameConstants.shared.gameTypes
    }
}
