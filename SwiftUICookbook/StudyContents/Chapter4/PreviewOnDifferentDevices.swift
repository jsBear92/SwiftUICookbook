//
//  PreviewOnDifferentDevices.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PreviewOnDifferentDevices: View {
    var body: some View {
        VStack {
            Image("dog1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Importance of Friendship")
                .font(.title)
            Text("Friends helps us deal with stress and make better life choices")
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview("Friendship") {
    PreviewOnDifferentDevices()
}
