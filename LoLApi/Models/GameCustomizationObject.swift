//
//  GameCustomizationObject.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct GameCustomizationObject: Decodable {
    public var category: String
    public var content: String

    public init(category: String, content: String) {
        self.category = category
        self.content = content
    }
}
