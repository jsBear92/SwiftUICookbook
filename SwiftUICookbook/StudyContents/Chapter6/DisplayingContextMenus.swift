//
//  DisplayingContextMenus.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct DisplayingContextMenus: View {
    @State private var bulbColor = Color.red
    var body: some View {
        Image(systemName: "lightbulb.fill")
            .font(.system(size: 60))
            .foregroundStyle(bulbColor)
            .contextMenu {
                Button("Yellow Bulb") {
                    bulbColor = .yellow
                }
                Button("Blue Bulb") {
                    bulbColor = .blue
                }
                Button("Green Bulb") {
                    bulbColor = .green
                }
            }
    }
}

#Preview {
    DisplayingContextMenus()
}
