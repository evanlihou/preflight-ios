//
//  PreFlightAppApp.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-16.
//

import SwiftUI
import SwiftData

@main
struct PreFlightApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            PFItem.self,
            PFList.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
