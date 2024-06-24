//
//  ListEditView.swift
//  PreFlightApp
//
//  Created by Evan Lihou on 2024-06-17.
//

import SwiftUI

struct ListEditView: View {
    @Binding var list: PFList
    var body: some View {
        Form {
            Section("Details") {
                TextField("Name", text: $list.name)
            }
        }
    }
}

#Preview {
    ListEditView(list: .constant(PFList.emptyList))
}
