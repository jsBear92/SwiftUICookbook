//
//  ProgressRingView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct ProgressRingInit: Shape {
    private let startAngle = Angle.radians(1.5 * .pi)
    
    var progress: Double
    
    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width/2, startAngle: startAngle, endAngle: startAngle + Angle(radians: 2 * .pi * progress), clockwise: false)
        }
    }
}

struct ProgressRingView: View {
    private let ringPadding = 5.0
    private let ringWidth = 40.0
    private var ringStrokeStyle: StrokeStyle {
        .init(lineWidth: ringWidth, lineCap: .round, lineJoin: .round)
    }
    
    var progressExternal: Double
    var progressCentral: Double
    var progressInternal: Double
    var body: some View {
        ZStack {
            ProgressRingInit(progress: progressInternal)
                .stroke(.blue, style: ringStrokeStyle)
                .padding(2*(ringWidth + ringPadding))
            ProgressRingInit(progress: progressCentral)
                .stroke(.red, style: ringStrokeStyle)
                .padding(ringWidth + ringPadding)
            ProgressRingInit(progress: progressExternal)
                .stroke(.green, style: ringStrokeStyle)
        }
        .padding(ringWidth)
    }
}
