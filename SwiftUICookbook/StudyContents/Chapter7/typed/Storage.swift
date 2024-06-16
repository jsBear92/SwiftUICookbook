//
//  Storage.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import Foundation

final class Storage: ObservableObject {
    @Published var food: [Ch7Food]
    @Published var recents: [Ch7Food]
    
    init(food: [Ch7Food], recents: [Ch7Food] = []) {
        self.food = food
        self.recents = recents
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
}
