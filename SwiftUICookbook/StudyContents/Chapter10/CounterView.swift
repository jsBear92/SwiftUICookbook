//
//  CounterView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 18/6/2024.
//

import SwiftUI

class Counter: ObservableObject {
    @Published var value: Int = 0
    func inc() {
        value += 1
    }
    func dec() {
        value -= 1
    }
}

struct CounterView: View {
//    @ObservedObject var counter = Counter()
    @StateObject var counter = Counter()
    var body: some View {
        VStack(spacing: 12) {
            Text("\(counter.value)")
            HStack(spacing: 12) {
                Button {
                    counter.dec()
                } label: {
                    Text("-")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.red)
                }
                Button {
                    counter.inc()
                } label: {
                    Text("+")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.green)
                }
            }
        }
    }
}

#Preview {
    CounterView()
}
