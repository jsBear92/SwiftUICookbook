//
//  SimpleNavigation.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct SimpleNavigation: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Show First View") {
                    Ch7FirstView()
                }
                NavigationLink("Show Second View") {
                    Ch7SecondView()
                }
                NavigationLink("Show Third View") {
                    Ch7ThirdView()
                }
                NavigationLink("Show Fourth View") {
                    Ch7FourthView()
                }
            }
            .navigationTitle("Top level")
        }
        .tint(.teal)
    }
}

#Preview {
    NavigationStack {
        SimpleNavigation()
    }
}
