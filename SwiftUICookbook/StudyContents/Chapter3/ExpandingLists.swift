//
//  ExpandingLists.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct Backpack: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var content: [Backpack]?
}

let dollar = Backpack(name: "Dollar", icon: "dollarsign.circle")
let yen = Backpack(name: "Yen", icon: "yensign.circle")
let currencies = Backpack(name: "Currencies", icon: "coloncurrencysign.circle", content: [dollar, yen])

let pencil = Backpack(name: "Pencil", icon: "pencil.circle")
let hammer = Backpack(name: "Hammer", icon: "hammer")
let paperClip = Backpack(name: "Paper Clip", icon: "paperclip")
let glass = Backpack(name: "Magnifying glass", icon: "magnifyingglass")

let bin = Backpack(name: "Bin", icon: "arrow.up.bin", content: [paperClip, glass])
let tools = Backpack(name: "Tools", icon: "folder", content: [pencil, hammer, bin])

struct ExpandingLists: View {
    let bagContents = [currencies, tools]
    var body: some View {
        List(bagContents, children: \.content) { row in
            Label(row.name, systemImage: row.icon)
        }
    }
}

#Preview {
    ExpandingLists()
}
