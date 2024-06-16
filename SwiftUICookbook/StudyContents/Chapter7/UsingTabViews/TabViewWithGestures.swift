//
//  TabViewWithGestures.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct TabViewWithGestures: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab, content: {
            Tab(value: 0) {
                Text("Left Tab. Tab to switch to right")
                    .onTapGesture {
                        selectedTab = 1
                    }
            } label: {
                Label("Left", systemImage: "l.circle.fill")
            }
            Tab(value: 1) {
                Text("Right Tab. Tab to switch to left")
                    .onTapGesture {
                        selectedTab = 0
                    }
            } label: {
                Label("Right", systemImage: "r.circle.fill")
            }
        })
    }
}

#Preview {
    TabViewWithGestures()
}
