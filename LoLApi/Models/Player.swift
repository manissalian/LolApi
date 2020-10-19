//
//  Player.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Player: Decodable {
    public var platformId: String
    public var accountId: String
    public var summonerName: String
    public var summonerId: String
    public var currentPlatformId: String
    public var currentAccountId: String
    public var matchHistoryUri: String
    public var profileIcon: Int

    public init(platformId: String, accountId: String, summonerName: String, summonerId: String, currentPlatformId: String, currentAccountId: String, matchHistoryUri: String, profileIcon: Int) {
        self.platformId = platformId
        self.accountId = accountId
        self.summonerName = summonerName
        self.summonerId = summonerId
        self.currentPlatformId = currentPlatformId
        self.currentAccountId = currentAccountId
        self.matchHistoryUri = matchHistoryUri
        self.profileIcon = profileIcon
    }
}
