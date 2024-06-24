//
//  ListCard.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import SwiftUI
import SwiftData

struct ListCard: View {
    let list: PFList
    let numItems: Int
    var body: some View {
        HStack {
            Text("\(list.name)")
            Spacer()
            Label("\(numItems)", systemImage: "list.bullet")
        }
    }
}

#Preview {
    let container = DataController.previewContainer
    let lists = try! container.mainContext.fetch(FetchDescriptor<PFList>(sortBy: [.init(\PFList.sortOrder)]))
    let list = lists[0]

    return ListCard(list: list, numItems: list.items.count)
}
