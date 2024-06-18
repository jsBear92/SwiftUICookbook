//
//  DynamicTodoList.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct DynamicTodoList: View {
    @State private var todos = [
        C10Todo(description: "review the first chapter", done: false),
        C10Todo(description: "buy wine", done: false),
        C10Todo(description: "paint kitchen", done: false),
        C10Todo(description: "cut the grass", done: false),
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            List {
                ForEach($todos) { $todo in
                    HStack {
                        Text(todo.description)
                            .strikethrough(todo.done)
                        Spacer()
                        Image(systemName: todo.done ? "checkmark.square" : "square")
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        todo.done.toggle()
                    }
                }
            }
            InputTodoView(todos: $todos)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    DynamicTodoList()
}
