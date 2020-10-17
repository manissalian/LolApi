//
//  Summoner.swift
//  LoLApi
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Summoner: Decodable {
    public var id: String
    public var accountId: String
    public var puuid: String
    public var name: String
    public var profileIconId: Int
    public var revisionDate: Int
    public var summonerLevel: Int

    public init(id: String, accountId: String, puuid: String, name: String, profileIconId: Int, revisionDate: Int, summonerLevel: Int) {
        self.id = id
        self.accountId = accountId
        self.puuid = puuid
        self.name = name
        self.profileIconId = profileIconId
        self.revisionDate = revisionDate
        self.summonerLevel = summonerLevel
    }
}
