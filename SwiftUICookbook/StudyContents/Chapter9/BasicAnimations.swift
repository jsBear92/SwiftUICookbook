//
//  BasicAnimations.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct AnimationType: Hashable {
    let name: String
    let animation: Animation

    static var all: [AnimationType] = [
        .init(name: "default", animation: .default),
        .init(name: "easeIn", animation: .easeIn),
        .init(name: "easeOut", animation: .easeOut),
        .init(name: "easeInOut", animation: .easeInOut),
        .init(name: "linear", animation: .linear),
        .init(name: "spring", animation: .spring),
    ]
}

struct BasicAnimations: View {
    @State var onTop = false
    @State var type: AnimationType = AnimationType.all.first!
    @State var showSelection = false
    
    var body: some View {
        VStack(spacing: 12) {
            GeometryReader { geometry in
                HStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 80, height: 80)
                        .offset(y: onTop ? -geometry.size.height/2 : geometry.size.height/2)
                        .animation(.default, value: onTop)
                    Spacer()
                    Circle()
                        .fill(.red)
                        .frame(width: 80, height: 80)
                        .offset(y: onTop ? -geometry.size.height/2 : geometry.size.height/2)
                        .animation(type.animation, value: onTop)
                }
                .padding(.horizontal, 30)
            }
            Button {
                onTop.toggle()
            } label: {
                Text("Animate")
            }
            Text("Current animation: \(type.name)")
                .confirmationDialog("Animations", isPresented: $showSelection) {
                    ForEach(AnimationType.all, id: \.self) { type in
                        Button {
                            self.type = type
                        } label: {
                            Text(type.name)
                        }
                    }
                } message: {
                    Text("Animations")
                }
            Button {
                showSelection.toggle()
            } label: {
                Text("Choose animation")
            }

        }
    }
}

#Preview {
    BasicAnimations()
}
