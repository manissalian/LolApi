//
//  Perks.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Perks: Decodable {
    public var perkIds: [Int]
    public var perkStyle: Int
    public var perkSubStyle: Int

    public init(perkIds: [Int], perkStyle: Int, perkSubStyle: Int) {
        self.perkIds = perkIds
        self.perkStyle = perkStyle
        self.perkSubStyle = perkSubStyle
    }
}
