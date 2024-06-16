//
//  Ch7FoodView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct Ch7FoodView: View {
    @EnvironmentObject private var storage: Storage
    var food: Ch7Food
    var body: some View {
        VStack(alignment: .leading) {
            Ch7CategoryView(category: food.category)
                .padding(.leading)
            Image(food.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 300)
            if storage.recents.isEmpty {
                Spacer()
            } else {
                List {
                    Section("Recents") {
                        ForEach(storage.recents) { recent in
                            NavigationLink(value: recent) {
                                Ch7FoodRowView(food: recent)
                            }
                            .disabled(recent == food)
                        }
                    }
                }
                .listStyle(.grouped)
            }
        }
        .navigationTitle(food.name)
    }
}

#Preview {
    let fruits = Array(Ch7Food.samples.prefix(3))
    return NavigationStack {
        Ch7FoodView(food: fruits.first!)
            .environmentObject(Storage(food: Ch7Food.samples, recents: fruits))
    }
}
