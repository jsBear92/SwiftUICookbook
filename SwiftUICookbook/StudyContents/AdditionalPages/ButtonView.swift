//
//  ButtonView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct ButtonView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Welcome to your second view")
            Text("Current count value: \(count)")
                .padding()
            Button {
                count += 1
            } label: {
                Text("Tap to Increment count")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Capsule())
            }
        }.navigationTitle("Button View")
    }
}

#Preview {
    NavigationStack {
        ButtonView()
    }
}
