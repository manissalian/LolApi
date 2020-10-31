//
//  LeagueList.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct LeagueList: Decodable {
    public var leagueId: String
    public var tier: String
    public var queue: String
    public var name: String
    public var entries: [LeagueItem]

    public init(leagueId: String, tier: String, queue: String, name: String, entries: [LeagueItem]) {
        self.leagueId = leagueId
        self.tier = tier
        self.queue = queue
        self.name = name
        self.entries = entries
    }
}
