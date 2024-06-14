//
//  PreviewingWithTraits.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PreviewingWithTraits: View {
    var body: some View {
        ZStack {
            Color.teal
                .frame(width: 200, height: 150)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                Text("Hello, world")
                    .font(.title2)
            }
            .foregroundStyle(.primary)
            .padding(.all, 20)
            .background()
            .border(.tertiary, width: 10)
        }
    }
}

#Preview("Portrait") {
    PreviewingWithTraits()
}

#Preview("Landscape", traits: .landscapeLeft) {
    PreviewingWithTraits()
}

#Preview("Upside down", traits: .portraitUpsideDown) {
    PreviewingWithTraits()
}

#Preview("Size that fits", traits: .sizeThatFitsLayout) {
    PreviewingWithTraits()
}

#Preview("Fixed size", traits: .fixedLayout(width: 500, height: 200)) {
    PreviewingWithTraits()
}
