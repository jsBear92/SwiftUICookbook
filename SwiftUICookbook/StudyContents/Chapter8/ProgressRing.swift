//
//  ProgressRing.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct ProgressRing: View {
    @State private var progressExternal = 0.3
    @State private var progressCentral = 0.7
    @State private var progressInternal = 0.5
    var body: some View {
        ZStack {
            ProgressRingView(progressExternal: progressExternal, progressCentral: progressCentral, progressInternal: progressInternal)
                .aspectRatio(contentMode: .fit)
            VStack(spacing: 10) {
                Spacer()
                Slider(value: $progressInternal, in: 0...1, step: 0.01)
                Slider(value: $progressCentral, in: 0...1, step: 0.01)
                Slider(value: $progressExternal, in: 0...1, step: 0.01)
            }
            .padding(30)
        }
    }
}

#Preview {
    ProgressRing()
}
