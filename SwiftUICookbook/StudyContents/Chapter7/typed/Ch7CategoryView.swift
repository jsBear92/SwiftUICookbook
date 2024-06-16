//
//  Ch7CategoryView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct Ch7CategoryView: View {
    var category: Ch7Category
    var color: Color {
        switch category {
        case .meat:
            .red
        case .vegetable:
            .green
        case .fruit:
            .yellow
        }
    }
    var body: some View {
        Text(category.name)
            .foregroundStyle(.white)
            .padding(.all, 8)
            .background(color)
            .clipShape(Capsule())
    }
}

#Preview {
    VStack(spacing: 10) {
        ForEach(Ch7Category.allCases) {
            category in
            Ch7CategoryView(category: category)
        }
    }
}
