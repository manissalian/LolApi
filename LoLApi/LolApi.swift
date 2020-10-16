//
//  LolApi.swift
//  LoLApi
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public class LolApi {
    public var apiKey: String
    public var server: LolServer
    public var summoner: SummonerApi {
        self.summonerApi.lolApi = self
        return summonerApi
    }

    private var summonerApi = SummonerApi()

    var host: String {
        return "https://\(self.server.rawValue).api.riotgames.com"
    }

    public init(key: String, server: LolServer) {
        self.apiKey = key
        self.server = server
    }
}
