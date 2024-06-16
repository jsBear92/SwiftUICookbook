//
//  ModernNavigation.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct ModernNavigation: View {
    @StateObject private var navigation = Ch7Navigation()
    @StateObject private var storage = Storage(food: Ch7Food.samples)
    var body: some View {
        NavigationStack(path: $navigation.path) {
            List(Ch7Category.allCases) {
                category in
                Section(category.name) {
                    ForEach(storage.food(in: category)) {
                        food in
                        NavigationLink(value: food) {
                            Ch7FoodRowView(food: food)
                        }
                    }
                }
            }
            .navigationTitle("My Food")
            .navigationDestination(for: Ch7Food.self) { food in
                Ch7FoodView(food: food)
                    .environmentObject(navigation)
                    .environmentObject(storage)
            }
        }
    }
}

#Preview {
    ModernNavigation()
}
