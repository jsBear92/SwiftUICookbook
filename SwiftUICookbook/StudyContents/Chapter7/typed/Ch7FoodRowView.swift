//
//  Ch7FoodRowView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct Ch7FoodRowView: View {
    var food: Ch7Food
    var body: some View {
        LabeledContent {
            Image(food.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
        } label: {
            Text(food.name)
        }
    }
}

#Preview {
    let fruits = Array(Ch7Food.samples.prefix(4))
    return NavigationStack {
        List(fruits) {
            fruit in
            NavigationLink(value:fruit) {
                Ch7FoodRowView(food: fruit)
            }
        }
        .navigationTitle(fruits.first!.category.name)
    }
}
