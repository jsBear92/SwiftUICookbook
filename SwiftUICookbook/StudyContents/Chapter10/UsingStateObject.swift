//
//  UsingStatevObject.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 18/6/2024.
//

import SwiftUI

struct UsingStateObject: View {
    @State var refreshedAt: Date = Date()
    var body: some View {
        VStack(spacing: 12) {
            Text("Refreshed at ") + Text(refreshedAt.formatted(date: .omitted, time: .standard))
            CounterView()
            Button {
                refreshedAt = Date()
            } label: {
                Text("Refresh")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
            }

        }
    }
}

#Preview {
    UsingStateObject()
}
