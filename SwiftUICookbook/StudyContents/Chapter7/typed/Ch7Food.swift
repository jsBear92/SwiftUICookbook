//
//  Ch7Food.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import Foundation

struct Ch7Food: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var category: Ch7Category
}

extension Ch7Food {
    static let samples: [Ch7Food] = [
        Ch7Food(name: "Apple", category: .fruit),
        Ch7Food(name: "Pear", category: .fruit),
        Ch7Food(name: "Orange", category: .fruit),
        Ch7Food(name: "Lemon", category: .fruit),
        Ch7Food(name: "Strawberry", category: .fruit),
        Ch7Food(name: "Plum", category: .fruit),
        Ch7Food(name: "Banana", category: .fruit),
        Ch7Food(name: "Melon", category: .fruit),
        Ch7Food(name: "Watermelon", category: .fruit),
        Ch7Food(name: "Peach", category: .fruit),
        Ch7Food(name: "Pork", category: .meat),
        Ch7Food(name: "Beef", category: .meat),
        Ch7Food(name: "Lamb", category: .meat),
        Ch7Food(name: "Goat", category: .meat),
        Ch7Food(name: "Chicken", category: .meat),
        Ch7Food(name: "Turkey", category: .meat),
        Ch7Food(name: "Fish", category: .meat),
        Ch7Food(name: "Crab", category: .meat),
        Ch7Food(name: "Lobster", category: .meat),
        Ch7Food(name: "Shrimp", category: .meat),
        Ch7Food(name: "Carrot", category: .vegetable),
        Ch7Food(name: "Lettuce", category: .vegetable),
        Ch7Food(name: "Tomato", category: .vegetable),
        Ch7Food(name: "Onion", category: .vegetable),
        Ch7Food(name: "Broccoli", category: .vegetable),
        Ch7Food(name: "Cauliflower", category: .vegetable),
        Ch7Food(name: "Eggplant", category: .vegetable),
        Ch7Food(name: "Swiss Chard", category: .vegetable),
        Ch7Food(name: "Spinach", category: .vegetable),
        Ch7Food(name: "Zucchini", category: .vegetable),
    ]
}
