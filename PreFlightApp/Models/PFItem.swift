//
//  Item.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-16.
//

import Foundation
import SwiftData

@Model
final class PFItem {
    var timestamp: Date
    //@Relationship var list?: PFList
    
    init(timestamp: Date) {//, list: PFList) {
        self.timestamp = timestamp
        //self.list = list
    }
}
