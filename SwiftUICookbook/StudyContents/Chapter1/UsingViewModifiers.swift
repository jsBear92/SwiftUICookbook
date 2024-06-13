//
//  ApplyingGroupsViewModifier.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct UsingViewModifiers: View {
    var body: some View {
        Text("Perfect").modifier(BackgroundStyle(bgColor: .blue))
    }
}

struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundStyle(.black)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
    }
}

#Preview {
    UsingViewModifiers()
}
