//
//  MatchApi.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct MatchApi {
    private var endPoint = "/lol/match/v4"
    weak var lolApi: LolApi?

    public func getMatchlistByAccountId(id: String, parameters: MatchlistParameters? = nil, completion: @escaping (_ summoner: Matchlist?) -> Void) {
        let path = "/matchlists/by-account/\(id)"

        self.getMatchlist(path: path, parameters: parameters) { matchlist in
            completion(matchlist)
        }
    }

    func getMatchlist(path: String, parameters: MatchlistParameters?, completion: @escaping (_ summoner: Matchlist?) -> Void) {
        guard let lolApi = self.lolApi else {
            completion(nil)
            return
        }

        var urlString = "\(lolApi.host)/\(self.endPoint)\(path)"

        if let parameters = parameters {
            urlString = parameters.addToUrl(urlString: urlString)
        }

        Request.httpGet(key: lolApi.apiKey, urlString: urlString) { data in
            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let matchlist = try JSONDecoder().decode(Matchlist.self, from: data)
                completion(matchlist)
            } catch {
                completion(nil)
            }
        }
    }
}
