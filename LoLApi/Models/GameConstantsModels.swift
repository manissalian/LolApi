//
//  Season.swift
//  LoLApi
//
//  Created by Apple on 10/19/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Queue: Decodable {
    public var queueId: Int
    public var map: String
    public var description: String?
    public var notes: String?
}

public struct Season: Decodable {
    public var id: Int
    public var season: String
}

public struct Map: Decodable {
    public var mapId: Int
    public var mapName: String
    public var notes: String
}

public struct GameMode: Decodable {
    public var gameMode: String
    public var description: String
}

public struct GameType: Decodable {
    public var gametype: String
    public var description: String
}
