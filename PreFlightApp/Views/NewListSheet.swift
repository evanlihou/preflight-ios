//
//  NewListSheet.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import SwiftUI
import SwiftData

struct NewListSheet: View {
    @State private var newList = PFList.emptyList
    @Binding var isPresentingNewListView: Bool
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            ListEditView(list: $newList)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Dismiss") {
                        isPresentingNewListView = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        modelContext.insert(newList)
                        isPresentingNewListView = false
                    }
                }
            }
        }
    }
}


#Preview {
    let container = DataController.previewContainer
    let lists = try! container.mainContext.fetch(FetchDescriptor<PFList>(sortBy: [.init(\PFList.sortOrder)]))
    
    return NewListSheet(
        isPresentingNewListView: .constant(true)
    )
}
