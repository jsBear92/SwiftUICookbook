//
//  PresentingSheets.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PresentingSheets: View {
    @State private var isSheetPresented = false
    @State private var isSheetWithNavPresented = false
    @State private var isFullScreenCoverPresented = false
    var body: some View {
        VStack(spacing: 20) {
            Button("Try me!") {
                print("Try me!")
            }.padding(.bottom, 200)
            Button {
                isSheetPresented = true
            } label: {
                Text("Show sheet with drag")
            }
            .sheet(isPresented: $isSheetPresented) {
                SheetView()
                    .presentationDragIndicator(.visible)
            }
            Button {
                isSheetWithNavPresented = true
            } label: {
                Text("Show sheet with navigation bar")
            }
            .sheet(isPresented: $isSheetWithNavPresented) {
                print("Sheet dismissed")
            } content: {
                SheetWithNavBar(text: "Sheet with navigation bar and presentation detents")
                    .presentationDetents([.medium, .large])
                    .presentationBackgroundInteraction(.enabled)
            }
            Button {
                isFullScreenCoverPresented = true
            } label: {
                Text("Show full screen cover")
            }.fullScreenCover(isPresented: $isFullScreenCoverPresented) {
                SheetWithNavBar(text: "Full screen cover with navigation bar")
            }

        }
    }
}

#Preview {
    PresentingSheets()
}
