//
//  MovingTheRowsInAListView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct MovingTheRowsInAListView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Cameroon", "South Africa", "Japan", "South Korea"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveRow)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
            })}
        }
    }
    private func deleteItem(at offsets: IndexSet) {
        countries.remove(atOffsets: offsets)
    }
    private func moveRow(from source: IndexSet, to destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    MovingTheRowsInAListView()
}
