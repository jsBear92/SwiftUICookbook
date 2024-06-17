//
//  BuiltInShapes.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct BuiltInShapes: View {
    var body: some View {
        VStack(spacing: 10) {
            Rectangle()
                .stroke(.orange, lineWidth: 15)
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 50, bottomLeading: 35, bottomTrailing: 20, topTrailing: 0), style: .circular).fill(.teal)
            Capsule(style: .continuous)
                .fill(.green)
                .frame(height: 100)
            Circle()
                .strokeBorder(.blue, lineWidth: 15)
            Ellipse()
                .fill(.purple)
        }.padding(.horizontal, 20)
    }
}

#Preview {
    BuiltInShapes()
}
