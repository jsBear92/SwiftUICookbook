//
//  MenuButtonView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a Country") {
            Button("Canada") { print("Selected Canada") }
            Button("Mexico") { print("Selected Mexico") }
            Button("USA") { print("Selected USA") }
        }
        .navigationTitle("MenuButton")
    }
}

#Preview {
    NavigationStack {
        MenuButtonView()
    }
}
