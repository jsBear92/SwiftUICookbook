//
//  UsingTabView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct UsingTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }
            Tab("Currencies", systemImage: "coloncurrencysign.circle.fill") {
                CurrenciesView()
            }
        }
    }
}

#Preview {
    UsingTabView()
}
