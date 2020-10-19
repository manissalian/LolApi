//
//  Rune.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Rune: Decodable {
    public var runeId: Int
    public var rank: Int

    public init(runeId: Int, rank: Int) {
        self.runeId = runeId
        self.rank = rank
    }
}
