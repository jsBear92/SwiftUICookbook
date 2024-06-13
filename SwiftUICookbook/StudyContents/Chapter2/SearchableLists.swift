//
//  UsingSearchableLists.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct UsingSearchableLists: View {
    @State private var searchText = ""
    let food: [Food] = Food.sampleFood
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { food in
                    LabeledContent(food.name) { Text("\(food.category.rawValue)")}
                }
            }
            .searchable(text: $searchText, prompt: "Search for a food")
            .navigationTitle("Foods")
        }
    }
    
    var searchResults: [Food] {
        if searchText.isEmpty {
            return food
        } else {
            return food.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
    }
}

#Preview {
    UsingSearchableLists()
}
