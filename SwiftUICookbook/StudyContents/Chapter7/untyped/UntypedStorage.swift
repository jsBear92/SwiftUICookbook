//
//  UntypedStorage.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import Foundation

final class UntypedStorage: ObservableObject {
    @Published var food: [Ch7Food]
    @Published var recents: [Ch7Food]
    @Published var favorites: [Ch7Food]
    
    init(food: [Ch7Food], recents: [Ch7Food] = [], favorites: [Ch7Food] = []) {
        self.food = food
        self.recents = recents
        self.favorites = favorites
    }
    func food(in category: Ch7Category) -> [Ch7Food] {
        food
            .filter { $0.category == category }
            .sorted { $0.name < $1.name}
    }
    
    func addRecent(_ food: Ch7Food) {
        if !recents.contains(food) {
            recents = [food] + Array(recents.prefix(2))
        }
    }
    
    func isFavorite(_ food: Ch7Food) -> Bool {
        favorites.contains(food)
    }
    
    func toggleFavorite(_ food: Ch7Food) {
        if isFavorite(food) {
            favorites.removeAll { $0.id == food.id}
        } else {
            favorites.append(food)
        }
    }
}
