//
//  MiniSeries.swift
//  LoLApi
//
//  Created by Apple on 10/31/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct MiniSeries: Decodable {
    public var wins: Int
    public var losses: Int
    public var target: Int
    public var progress: String

    public init(wins: Int, losses: Int, target: Int, progress: String) {
        self.wins = wins
        self.losses = losses
        self.target = target
        self.progress = progress
    }
}
