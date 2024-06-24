//
//  List.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import Foundation
import SwiftData

@Model
final class PFList {
    var name: String
    var sortOrder: Int
    @Relationship var items: [PFItem]
    
    init(name: String, sortOrder: Int, items: [PFItem] = []) {
        self.name = name
        self.sortOrder = sortOrder
        self.items = items
    }
}

extension PFList {
    static var emptyList: PFList = PFList(name: "", sortOrder: 0)
}
