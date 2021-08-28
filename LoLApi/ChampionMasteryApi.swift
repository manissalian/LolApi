//
//  ChampionMasteryApi.swift
//  LoLApi
//
//  Created by Apple on 10/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ChampionMasteryApi {
    private var endPoint = "/lol/champion-mastery/v4"
    weak var lolApi: LolApi?

    public func getChampionMasteryBySummonerId(id: String, forChampion championId: Int, completion: @escaping (_ masteries: ChampionMastery?) -> Void) {
        let path = "/champion-masteries/by-summoner/\(id)/by-champion/\(championId)"

        self.getChampionMasteries(path: path) { masteries in
            guard let masteries = masteries else {
                completion(nil)
                return
            }
            completion(masteries[0])
        }
    }

    public func getChampionMasteriesBySummonerId(id: String, completion: @escaping (_ masteries: [ChampionMastery]?) -> Void) {
        let path = "/champion-masteries/by-summoner/\(id)"

        self.getChampionMasteries(path: path) { masteries in
            completion(masteries)
        }
    }

    public func getChampionMasteryScoresBySummonerId(id: String, completion: @escaping (_ score: Int?) -> Void) {
        let path = "/scores/by-summoner/\(id)"

        self.getChampionMasteryScores(path: path) { score in
            completion(score)
        }
    }

    func getChampionMasteries(path: String, completion: @escaping (_ masteries: [ChampionMastery]?) -> Void) {
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
                let masteries = try JSONDecoder().decode([ChampionMastery].self, from: data)
                completion(masteries)
            } catch {
                do {
                    let mastery = try JSONDecoder().decode(ChampionMastery.self, from: data)
                    completion([mastery])
                } catch {
                    completion(nil)
                }
            }
        }
    }

    func getChampionMasteryScores(path: String, completion: @escaping (_ scores: Int?) -> Void) {
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
                let scores = try JSONDecoder().decode(Int.self, from: data)
                completion(scores)
            } catch {
                completion(nil)
            }
        }
    }
}
