//
//  PresentingAlerts.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PresentingAlerts: View {
    @State private var showSubmitAlert = false
    var body: some View {
        VStack {
            Button(action: {
                showSubmitAlert = true
            }) {
                Text("Show Alert")
            }
            .alert("Confirm Actions", isPresented: $showSubmitAlert) {
                Button("OK") {}
            } message: {
                Text("Are you sure you want to proceed?")
            }

            // old version (iOS 13 and iOS 14)
            Button(action: { showSubmitAlert = true }) {
                Text("Show alert - old")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
            .alert(isPresented: $showSubmitAlert) {
                Alert(title: Text("Confirm Action"),
                      message: Text("Are you sure you want to submit form?"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    PresentingAlerts()
}
