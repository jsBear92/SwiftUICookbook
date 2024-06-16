//
//  UntypedFoodView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct UntypedFoodView: View {
    @EnvironmentObject private var storage: UntypedStorage
    @EnvironmentObject private var navigation: UntypedNavigation
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
        .toolbar {
            Button {
                storage.toggleFavorite(food)
            } label: {
                if storage.isFavorite(food) {
                    Image(systemName: "minus.square")
                } else {
                    Image(systemName: "plus.square")
                }
            }
            Button {
                navigation.popToRoot()
            } label: {
                Image(systemName: "list.bullet")
            }
        }
    }
}

#Preview {
    let fruits = Array(Ch7Food.samples.prefix(3))
    return NavigationStack {
        UntypedFoodView(food: fruits.first!)
            .environmentObject(UntypedStorage(food: Ch7Food.samples, recents: fruits))
    }
}

