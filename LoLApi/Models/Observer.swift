//
//  Observer.swift
//  LoLApi
//
//  Created by Apple on 11/2/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

public struct Observer: Decodable {
    public var encryptionKey: String

    public init(encryptionKey: String) {
        self.encryptionKey = encryptionKey
    }
}
