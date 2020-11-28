//
//  LeagueApi.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct LeagueApi {
    private var endPoint = "/lol/league/v4"
    weak var lolApi: LolApi?

    public func getChallengerLeaguesByQueue(queue: QueueType, completion: @escaping (_ leagueList: LeagueList?) -> Void) {
        let path = "/challengerleagues/by-queue/\(queue.rawValue)"

        self.getLeague(path: path) { leagueList in
            completion(leagueList)
        }
    }

    public func getGrandmasterLeaguesByQueue(queue: QueueType, completion: @escaping (_ leagueList: LeagueList?) -> Void) {
        let path = "/grandmasterleagues/by-queue/\(queue.rawValue)"

        self.getLeague(path: path) { leagueList in
            completion(leagueList)
        }
    }

    public func getMasterLeaguesByQueue(queue: QueueType, completion: @escaping (_ leagueList: LeagueList?) -> Void) {
        let path = "/masterleagues/by-queue/\(queue.rawValue)"

        self.getLeague(path: path) { leagueList in
            completion(leagueList)
        }
    }

    public func getLeagueById(id: String, completion: @escaping (_ leagueList: LeagueList?) -> Void) {
        let path = "/leagues/\(id)"

        self.getLeague(path: path) { leagueList in
            completion(leagueList)
        }
    }

    public func getEntries(queue: QueueType, tier: String, division: String, page: Int = 1, completion: @escaping (_ leagueList: [LeagueEntry]?) -> Void) {
        let path = "/entries/\(queue.rawValue)/\(tier)/\(division)?page=\(page)"

        self.getEntries(path: path) { leagueEntry in
            completion(leagueEntry)
        }
    }

    public func getEntriesBySummonerId(id: String, completion: @escaping (_ leagueList: [LeagueEntry]?) -> Void) {
        let path = "/entries/by-summoner/\(id)"

        self.getEntries(path: path) { leagueEntry in
            completion(leagueEntry)
        }
    }

    func getLeague(path: String, completion: @escaping (_ leagueList: LeagueList?) -> Void) {
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
                let leagueList = try JSONDecoder().decode(LeagueList.self, from: data)
                completion(leagueList)
            } catch {
                completion(nil)
            }
        }
    }

    func getEntries(path: String, completion: @escaping (_ leagueList: [LeagueEntry]?) -> Void) {
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
                let leagueEntries = try JSONDecoder().decode([LeagueEntry].self, from: data)
                completion(leagueEntries)
            } catch {
                completion(nil)
            }
        }
    }
}
