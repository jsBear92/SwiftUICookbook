//
//  Drawing.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct Line {
    var points: [CGPoint]
}

struct Drawing: View {
    @State var lines: [Line] = []
    var body: some View {
        Canvas { ctx, size in
            for line in lines {
                var path = Path()
                path.addLines(line.points)
                
                ctx.stroke(path, with: .color(.red), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            }
        }
        .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({ value in
                let position = value.location
                if value.translation == .zero {
                    lines.append(Line(points: [position]))
                } else {
                    guard let lastIdx = lines.indices.last else {
                        return
                    }
                    lines[lastIdx].points.append(position)
                }
            }))
    }
}

#Preview {
    Drawing()
}
