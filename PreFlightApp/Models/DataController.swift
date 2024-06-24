//
//  DataController.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import Foundation
import SwiftData

#if DEBUG
@MainActor
class DataController {
    static let exampleLists: [PFList] = [
        .init(name: "Daily Routine", sortOrder: 1, items: [.init(timestamp: .now)]),
        .init(name: "Trip Packing", sortOrder: 2)
    ]
    
    static let previewContainer: ModelContainer = {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: true)
            let container = try ModelContainer(for: PFList.self, configurations: config)

            for list in exampleLists {
                container.mainContext.insert(list)
            }

            return container
        } catch {
            fatalError("Failed to create model container for previewing: \(error.localizedDescription)")
        }
    }()
}
#endif
