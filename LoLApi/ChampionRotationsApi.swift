//
//  ChampionRotationApi.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct ChampionRotationsApi {
    private var endPoint = "/lol/platform/v3"
    weak var lolApi: LolApi?

    public func getChampionRotations(completion: @escaping (_ masteries: ChampionRotations?) -> Void) {
        let path = "/champion-rotations"

        self.getChampionRotations(path: path) { championInfo in
            completion(championInfo)
        }
    }

    func getChampionRotations(path: String, completion: @escaping (_ championInfo: ChampionRotations?) -> Void) {
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
                let championInfo = try JSONDecoder().decode(ChampionRotations.self, from: data)
                completion(championInfo)
            } catch {
                completion(nil)
            }
        }
    }
}
