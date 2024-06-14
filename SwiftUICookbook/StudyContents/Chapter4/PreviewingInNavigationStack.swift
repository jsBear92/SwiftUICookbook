//
//  PreviewingInNavigationStack.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PreviewingInNavigationStack: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SecondView(someText: "Text passed from ContentView")) {
                Text("Go to second view")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 25))
            }
            .navigationTitle("Previews")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview("ContentView") {
    PreviewingInNavigationStack()
}
