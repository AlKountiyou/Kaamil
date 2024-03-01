//
//  Item.swift
//  Kaamil
//
//  Created by mouhamad kounta on 01/03/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
