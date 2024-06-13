//
//  CreatingAnEditableListView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct CreatingAnEditableListView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Cameroon", "South Africa", "Japan", "South Korea"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { ToolbarItem(placement: .topBarLeading, content: {
                EditButton()
            })}
        }
    }
    private func deleteItem(at offsets: IndexSet) {
        countries.remove(atOffsets: offsets)
    }
}

#Preview {
    CreatingAnEditableListView()
}
