//
//  Ch7ThirdView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct Ch7ThirdView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView {
            Image(systemName: "triangle")
                .font(.system(size: 80))
                .foregroundStyle(.teal)
                .padding(.vertical, 50)
            Text("This is the Third View")
                .foregroundStyle(.primary)
                .padding()
        }
        .padding()
        .navigationTitle("Third")
        .toolbarBackground(.quaternary, for: .navigationBar)
        .navigationBarBackButtonHidden()
        .toolbar {
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    NavigationStack {
        Ch7ThirdView()
    }
}
