//
//  UntypedFoodCategory.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct UntypedFoodCategoryView: View {
    @EnvironmentObject private var storage: UntypedStorage
    var category: Ch7Category
    var body: some View {
        List(storage.food(in: category)) {
            food in
            NavigationLink(value: food) {
                Ch7FoodRowView(food: food)
            }
        }
        .navigationTitle(category.name)
    }
}

#Preview {
    NavigationStack {
        UntypedFoodCategoryView(category: .fruit)
            .environmentObject(UntypedStorage(food: Ch7Food.samples))
    }
}
