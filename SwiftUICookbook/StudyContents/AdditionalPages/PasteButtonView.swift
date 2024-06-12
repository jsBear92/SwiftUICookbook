//
//  PasteButtonView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct PasteButtonView: View {
    @State private var text = String()
    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information, check the \"See also\" section of this recipe")
                .padding()
        }
        .navigationTitle("PasteButton")
    }
}

#Preview {
    NavigationStack {
        PasteButtonView()
    }
}
