//
//  Ch7FourthView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import SwiftUI

struct Ch7FourthView: View {
    @State private var isSheetPresented = false
    var body: some View {
        ScrollView {
            Image(systemName: "capsule")
                .font(.system(size: 80))
                .foregroundStyle(.red)
                .padding(.vertical, 50)
            Text("This is the Fourth View")
                .foregroundStyle(.primary)
                .padding()
            Button("Show sheet") {
                isSheetPresented = true
            }.sheet(isPresented: $isSheetPresented) {
                Ch7SheetView()
                    .presentationDetents([.fraction(0.75)])
                    .presentationDragIndicator(.visible)
            }
        }
        .navigationTitle("Fourth")
        .toolbarBackground(.quaternary, for: .navigationBar)
        .toolbarBackgroundVisibility(.visible, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        Ch7FourthView()
    }
}
