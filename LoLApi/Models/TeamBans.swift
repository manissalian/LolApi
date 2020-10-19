//
//  TeamBans.swift
//  LoLApi
//
//  Created by Apple on 10/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct TeamBans: Decodable {
    public var championId: Int
    public var pickTurn: Int
}
