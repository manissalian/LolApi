//
//  Matchlist.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Matchlist: Decodable {
    public var startIndex: Int
    public var totalGames: Int
    public var endIndex: Int
    public var matches: [MatchReference]

    public init(startIndex: Int, totalGames: Int, endIndex: Int, matches: [MatchReference]) {
        self.startIndex = startIndex
        self.totalGames = totalGames
        self.endIndex = endIndex
        self.matches = matches
    }
}

public struct MatchlistParameters: Decodable {
    public var champion: [Int]?
    public var queue: [Int]?
    public var season: [Int]?
    public var beginTime: Int?
    public var endTime: Int?
    public var beginIndex: Int?
    public var endIndex: Int?

    public init(champion: [Int]? = nil, queue: [Int]? = nil, season: [Int]? = nil, beginTime: Int? = nil, endTime: Int? = nil, beginIndex: Int? = nil, endIndex: Int? = nil) {
        self.champion = champion
        self.queue = queue
        self.season = season
        self.beginTime = beginTime
        self.endTime = endTime
        self.beginIndex = beginIndex
        self.endIndex = endIndex
    }

    func addToUrl(urlString: String) -> String {
        var queryItems: [URLQueryItem] = []

        if let champion = self.champion {
            for champ in champion {
                let queryItem = URLQueryItem(name: "champion", value: String(champ))
                queryItems.append(queryItem)
            }
        }

        if let queue = self.queue {
            for q in queue {
                let queryItem = URLQueryItem(name: "queue", value: String(q))
                queryItems.append(queryItem)
            }
        }

        if let season = self.season {
            for s in season {
                let queryItem = URLQueryItem(name: "season", value: String(s))
                queryItems.append(queryItem)
            }
        }

        if let beginTime = self.beginTime {
            let queryItem = URLQueryItem(name: "beginTime", value: String(beginTime))
            queryItems.append(queryItem)
        }

        if let endTime = self.endTime {
            let queryItem = URLQueryItem(name: "endTime", value: String(endTime))
            queryItems.append(queryItem)
        }

        if let beginIndex = self.beginIndex {
            let queryItem = URLQueryItem(name: "beginIndex", value: String(beginIndex))
            queryItems.append(queryItem)
        }

        if let endIndex = self.endIndex {
            let queryItem = URLQueryItem(name: "endIndex", value: String(endIndex))
            queryItems.append(queryItem)
        }

        let urlComps = URLComponents(string: urlString)
        guard var urlComponents = urlComps else {
            return urlString
        }

        urlComponents.queryItems = queryItems

        if let url = urlComponents.url {
            return url.absoluteString
        }

        return urlString
    }
}
