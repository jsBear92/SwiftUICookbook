//
//  RhombusApp.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct Rhombus: Shape {
    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.closeSubpath()
        }
    }
}

struct RhombusApp: View {
    var body: some View {
        Rhombus()
            .fill(.orange)
            .aspectRatio(0.7, contentMode: .fit)
            .padding(.horizontal, 10)
    }
}

#Preview {
    RhombusApp()
}
