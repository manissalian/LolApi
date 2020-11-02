//
//  FeaturedParticipant.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct FeaturedParticipant: Decodable {
    public var teamId: Int
    public var spell1Id: Int
    public var spell2Id: Int
    public var championId: Int
    public var skinIndex: Int
    public var profileIconId: Int
    public var summonerName: String
    public var bot: Bool

    public init(teamId: Int, spell1Id: Int, spell2Id: Int, championId: Int, skinIndex: Int, profileIconId: Int, summonerName: String, bot: Bool) {
        self.teamId = teamId
        self.spell1Id = spell1Id
        self.spell2Id = spell2Id
        self.championId = championId
        self.skinIndex = skinIndex
        self.profileIconId = profileIconId
        self.summonerName = summonerName
        self.bot = bot
    }
}
