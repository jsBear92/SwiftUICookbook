//
//  AnimateTriangleShape.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct Triangle: Shape {
    var multiplier: CGFloat
    var animatableData: CGFloat {
        get { multiplier }
        set { multiplier = newValue }
    }
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY - multiplier * rect.width))
            path.closeSubpath()
        }
    }
}

struct AnimateTriangleShape: View {
    @State var multiplier = 1.0
    var body: some View {
        Triangle(multiplier: multiplier)
            .fill(.red)
            .frame(width: 300, height: 300)
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.5)) {
                    multiplier = .random(in: 0.3...1.5)
                }
            }
    }
}

#Preview {
    AnimateTriangleShape()
}
