//
//  AlertsWithActions.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct AlertsWithActions: View {
    @State private var changeText = false
    @State private var displayedText = "Tap to Change Text"
    var body: some View {
        Button {
            changeText = true
        } label: {
            Text(displayedText)
        }
        .alert("Changing Text", isPresented: $changeText) {
            Button(role: .destructive) {
                displayedText = if (displayedText == "Stay Foolish") {
                    "Stay Hungry"
                } else {
                    "Stay Foolish"
                }
            } label: {
                Text("Yes")
            }
            Button("Do Nothing", role: .cancel) {}
        } message: {
            Text("Do you want to change the text?")
        }
    }
}

#Preview {
    AlertsWithActions()
}
