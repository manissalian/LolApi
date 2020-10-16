//
//  Summoner.swift
//  LoLApi
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Summoner: Decodable {
    var id: String
    var accountId: String
    var puuid: String
    var name: String
    var profileIconId: Int
    var revisionDate: Int
    var summonerLevel: Int
}
