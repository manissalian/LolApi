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
    public var match: MatchApi {
        self.matchApi.lolApi = self
        return matchApi
    }

    public static var gameConstants = GameConstantsApi()

    private var summonerApi = SummonerApi()
    private var matchApi = MatchApi()

    var host: String {
        return "https://\(self.server.rawValue).api.riotgames.com"
    }

    public init(key: String, server: LolServer) {
        self.apiKey = key
        self.server = server
    }

    public static func loadGameConstants(completion: @escaping () -> Void) {
        GameConstants.shared.fetchData {
            completion()
        }
    }
}
