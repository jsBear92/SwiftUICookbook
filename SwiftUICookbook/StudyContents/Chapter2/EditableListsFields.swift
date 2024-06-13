//
//  CreatingEditableCollections.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct CreatingEditableCollections: View {
    @State private var todos = [
        TodoItem(title: "Eat"),
        TodoItem(title: "Sleep"),
        TodoItem(title: "Code")
    ]
    var body: some View {
        List($todos) { $todo in
            TextField("Todo Item", text: $todo.title)
        }
    }
}

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
}

#Preview {
    CreatingEditableCollections()
}
