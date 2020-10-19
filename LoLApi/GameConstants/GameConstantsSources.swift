//
//  GameConstant.swift
//  LoLApi
//
//  Created by Apple on 10/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

enum GameConstantsSources: String {
    case queues = "http://static.developer.riotgames.com/docs/lol/queues.json"
    case seasons = "http://static.developer.riotgames.com/docs/lol/seasons.json"
    case maps = "http://static.developer.riotgames.com/docs/lol/maps.json"
    case gameModes = "http://static.developer.riotgames.com/docs/lol/gameModes.json"
    case gameTypes = "http://static.developer.riotgames.com/docs/lol/gameTypes.json"
}
