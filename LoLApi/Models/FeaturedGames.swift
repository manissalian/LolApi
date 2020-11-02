//
//  FeaturedGames.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct FeaturedGames: Decodable {
    public var gameList: [FeaturedGameInfo]
    public var clientRefreshInterval: Int

    public init(gameList: [FeaturedGameInfo], clientRefreshInterval: Int) {
        self.gameList = gameList
        self.clientRefreshInterval = clientRefreshInterval
    }
}
