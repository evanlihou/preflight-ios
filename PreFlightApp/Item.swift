//
//  Item.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-16.
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
