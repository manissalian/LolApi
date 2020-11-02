//
//  SpectatorApi.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct SpectatorApi {
    private var endPoint = "/lol/spectator/v4"
    weak var lolApi: LolApi?

    public func getFeaturedGames(completion: @escaping (_ featuredGames: FeaturedGames?) -> Void) {
        let path = "/featured-games"

        self.getFeaturedGames(path: path) { featuredGames in
            completion(featuredGames)
        }
    }

    public func getActiveGameBySummonerId(id: String, completion: @escaping (_ currentGameInfo: CurrentGameInfo?) -> Void) {
        let path = "/active-games/by-summoner/\(id)"

        self.getActiveGame(path: path) { currentGameInfo in
            completion(currentGameInfo)
        }
    }

    func getFeaturedGames(path: String, completion: @escaping (_ featuredGames: FeaturedGames?) -> Void) {
        guard let lolApi = self.lolApi else {
            completion(nil)
            return
        }

        let urlString = "\(lolApi.host)\(self.endPoint)\(path)"

        Request.httpGet(key: lolApi.apiKey, urlString: urlString) { data in
            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let featuredGames = try JSONDecoder().decode(FeaturedGames.self, from: data)
                completion(featuredGames)
            } catch {
                completion(nil)
            }
        }
    }

    func getActiveGame(path: String, completion: @escaping (_ currentGameInfo: CurrentGameInfo?) -> Void) {
        guard let lolApi = self.lolApi else {
            completion(nil)
            return
        }

        let urlString = "\(lolApi.host)\(self.endPoint)\(path)"

        Request.httpGet(key: lolApi.apiKey, urlString: urlString) { data in
            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let currentGameInfo = try JSONDecoder().decode(CurrentGameInfo.self, from: data)
                completion(currentGameInfo)
            } catch {
                completion(nil)
            }
        }
    }
}
