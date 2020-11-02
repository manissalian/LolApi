//
//  CurrentGameParticipant.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct CurrentGameParticipant: Decodable {
    public var teamId: Int
    public var spell1Id: Int
    public var spell2Id: Int
    public var championId: Int
    public var profileIconId: Int
    public var summonerName: String
    public var bot: Bool
    public var summonerId: String
    public var gameCustomizationObjects: [GameCustomizationObject]
    public var perks: Perks

    public init(teamId: Int, spell1Id: Int, spell2Id: Int, championId: Int, profileIconId: Int, summonerName: String, bot: Bool, summonerId: String, gameCustomizationObjects: [GameCustomizationObject], perks: Perks) {
        self.teamId = teamId
        self.spell1Id = spell1Id
        self.spell2Id = spell2Id
        self.championId = championId
        self.profileIconId = profileIconId
        self.summonerName = summonerName
        self.bot = bot
        self.summonerId = summonerId
        self.gameCustomizationObjects = gameCustomizationObjects
        self.perks = perks
    }
}
