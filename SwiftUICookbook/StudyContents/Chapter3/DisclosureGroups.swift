//
//  DisclosureGroups.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct DisclosureGroups: View {
    @State private var showplanets = true
    var body: some View {
        VStack {
            DisclosureGroup("Planets", isExpanded: $showplanets, content: {
                Text("Mercury")
                Text("Venus")
                DisclosureGroup("Earth") {
                    Text("North America")
                    Text("South America")
                    Text("Europe")
                    Text("Africa")
                    Text("Asia")
                    Text("Antarctica")
                    Text("Oceania")
                }
            })
            DisclosureGroup(content: {
                Text("Surprise! This is an alternative way of using DisclosureGroup")
            }, label: {
                Label("Tap to reveal", systemImage: "cube.box")
                    .font(.system(size: 25, design: .rounded))
                    .foregroundStyle(.blue)
            })
        }
        .padding()
    }
}

#Preview {
    DisclosureGroups()
}
