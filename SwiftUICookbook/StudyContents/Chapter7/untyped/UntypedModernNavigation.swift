//
//  UntypedModernNavigation.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct UntypedModernNavigation: View {
    @StateObject private var navigation = UntypedNavigation()
    @StateObject private var storage = UntypedStorage(food: Ch7Food.samples)
    var body: some View {
        NavigationStack(path: $navigation.path) {
            List {
                Section("Categories") {
                    ForEach(Ch7Category.allCases) {
                        category in
                        NavigationLink(category.name, value: category)
                    }
                }
                Section("Favorites") {
                    if storage.favorites.isEmpty {
                        Text("No favorites added")
                    } else {
                        ForEach(storage.favorites) { food in
                            NavigationLink(value: food) {
                                Ch7FoodRowView(food: food)
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Food")
            .navigationDestination(for: Ch7Category.self) { category in
                UntypedFoodCategoryView(category: category)
                    .environmentObject(storage)
            }
            .navigationDestination(for: Ch7Food.self) { food in
                UntypedFoodView(food: food)
                    .environmentObject(navigation)
                    .environmentObject(storage)
            }
        }
    }
}

#Preview {
    UntypedModernNavigation()
}
