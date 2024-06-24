//
//  ListsView.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import SwiftUI
import SwiftData

struct ListsView: View {
    @Query(sort: [SortDescriptor(\PFList.sortOrder, order: .forward)]) var lists: [PFList]
    @Environment(\.modelContext) var modelContext
    
    @State private var isPresentingCreateView = false
    
    var body: some View {
        NavigationStack {
            List(lists) { list in
                NavigationLink(destination: {}) {
                    ListCard(list: list, numItems: list.items.count).foregroundStyle(.foreground)
                }
            }
            .navigationTitle("Lists")
            .toolbar {
                Button(action: {
                    isPresentingCreateView = true
                }) {
                    Image(systemName: "plus")
                }.accessibilityLabel("New List")
            }
        }
        .sheet(isPresented: $isPresentingCreateView) {
            NewListSheet(isPresentingNewListView: $isPresentingCreateView)
        }
    }
}

#Preview {
    ListsView().modelContainer(DataController.previewContainer)
}
