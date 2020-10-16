//
//  SummonerApi.swift
//  LoLApi
//
//  Created by Apple on 10/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct SummonerApi {
    private var endPoint = "/lol/summoner/v4/summoners"
    weak var lolApi: LolApi?

    public func getSummonerByName(name: String, completion: @escaping (_ summoner: Summoner?) -> Void) {
        guard let lolApi = self.lolApi else {
            completion(nil)
            return
        }

        let path = "/by-name/\(name)"
        let urlString = "\(lolApi.host)/\(endPoint)\(path)"

        Request.httpGet(key: lolApi.apiKey, urlString: urlString) { data in
            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let summoner = try JSONDecoder().decode(Summoner.self, from: data)
                completion(summoner)
            } catch {
                completion(nil)
            }
        }
    }
}
