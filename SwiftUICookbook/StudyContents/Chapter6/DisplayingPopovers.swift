//
//  DisplayingPopovers.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct DisplayingPopovers: View {
    @State private var showPopover = false
    var body: some View {
        Button("Show popover") {
            showPopover = true
        }
        .font(.system(size: 40))
        .popover(isPresented: $showPopover) {
            Text("Popover content displayed here")
                .font(.system(size: 20))
                .padding()
        }
    }
}

#Preview {
    DisplayingPopovers()
}
