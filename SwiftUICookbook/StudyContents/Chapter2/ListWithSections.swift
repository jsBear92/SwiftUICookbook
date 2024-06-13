//
//  AddingSectionsToAList.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct AddingSectionsToAList: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("North America"), content: {
                    Text("USA")
                    Text("Canada")
                    Text("Mexico")
                    Text("Panama")
                    Text("Anguilla")
                })
                Section(header: Text("Africa"), content: {
                    Text("Nigeria")
                    Text("Ghana")
                    Text("Kenya")
                    Text("Senegal")
                })
                Section(header: Text("Europe"), content: {
                    Text("Spain")
                    Text("France")
                    Text("Sweden")
                    Text("Finland")
                })
            }
            .listStyle(.grouped)
            .navigationTitle("Contents and Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddingSectionsToAList()
}
