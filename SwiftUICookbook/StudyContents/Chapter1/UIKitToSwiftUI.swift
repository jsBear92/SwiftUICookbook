//
//  IntegratingUIKitSwitfUI.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animating {
            uiView.startAnimating()
        }else {
            uiView.stopAnimating()
        }
    }
}

struct UIKitToSwiftUI: View {
    @State private var isAnimating = true
    var body: some View {
        VStack {
            ActivityIndicator(animating: isAnimating)
            HStack {
                Toggle(isOn: $isAnimating, label: {
                    Text("Toggle Activity")
                })
            }
            .padding()
        }
    }
}

#Preview {
    UIKitToSwiftUI()
}
