//
//  PresentingConfirmationDialogs.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct PresentingConfirmationDialogs: View {
    @State private var showDialog = false
    private var title = "Confirmation Dialog"
    var body: some View {
        Button {
            showDialog = true
        } label: {
            Text("Present Confirmation Dialog")
        }
        .confirmationDialog(title, isPresented: $showDialog) {
            Button("Save") {
                print("Save action")
            }
            Button("Print") {
                print("Print action")
            }
            Button("Update", role: .destructive) {
                print("Update action")
            }
        } message: {
            Text("Use Confirmation Dialogs to present several actions")
        }
    }
}

#Preview {
    PresentingConfirmationDialogs()
}
