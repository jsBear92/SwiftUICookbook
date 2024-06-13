//
//  UsingSearchableListsWithScopes.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct SearchableListsWithScopes: View {
    /// add this code
    enum FruitSearchScope: Hashable {
        case all
        case food(Food.Category)
    }
    @State private var scope: FruitSearchScope = .all
    
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
            
            /// add this scope
            .searchScopes($scope, activation: .onSearchPresentation) {
                Text("All").tag(FruitSearchScope.all)
                Text("Fruit").tag(FruitSearchScope.food(.fruit))
                Text("Meat").tag(FruitSearchScope.food(.meat))
                Text("Vegetable").tag(FruitSearchScope.food(.vegetable))
            }
        }
    }
    
    var searchResults: [Food] {
        var food: [Food] = self.food
        if case let .food(category) = scope {
            food = food.filter { $0.category == category }
        }
        if !searchText.isEmpty {
            food = food.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
        return food
    }
}

#Preview {
    SearchableListsWithScopes()
}
