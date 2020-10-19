//
//  Queues.swift
//  LoLApi
//
//  Created by Apple on 10/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class GameConstants {
    static let shared = GameConstants()

    var queues: [Queue] = []
    var seasons: [Season] = []
    var maps: [Map] = []
    var gameModes: [GameMode] = []
    var gameTypes: [GameType] = []

    func fetchData(completion: @escaping () -> Void) {
        let group = DispatchGroup()

        group.enter()
        Request.httpGet(urlString: GameConstantsSources.queues.rawValue) { data in
            guard let data = data else {
                group.leave()
                return
            }

            do {
                let queues = try JSONDecoder().decode([Queue].self, from: data)
                self.queues = queues
            } catch {}
            group.leave()
        }

        group.enter()
        Request.httpGet(urlString: GameConstantsSources.seasons.rawValue) { data in
            guard let data = data else {
                group.leave()
                return
            }

            do {
                let seasons = try JSONDecoder().decode([Season].self, from: data)
                self.seasons = seasons
            } catch {}
            group.leave()
        }

        group.enter()
        Request.httpGet(urlString: GameConstantsSources.maps.rawValue) { data in
            guard let data = data else {
                group.leave()
                return
            }

            do {
                let maps = try JSONDecoder().decode([Map].self, from: data)
                self.maps = maps
            } catch {}
            group.leave()
        }

        group.enter()
        Request.httpGet(urlString: GameConstantsSources.gameModes.rawValue) { data in
            guard let data = data else {
                group.leave()
                return
            }

            do {
                let gameModes = try JSONDecoder().decode([GameMode].self, from: data)
                self.gameModes = gameModes
            } catch {}
            group.leave()
        }

        group.enter()
        Request.httpGet(urlString: GameConstantsSources.gameTypes.rawValue) { data in
            guard let data = data else {
                group.leave()
                return
            }

            do {
                let gameTypes = try JSONDecoder().decode([GameType].self, from: data)
                self.gameTypes = gameTypes
            } catch {}
            group.leave()
        }

        group.notify(queue: .main) {
            completion()
        }
    }
}
