//
//  TodoView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct TodoView: View {
    @State var tasks = Task.tasks
    var body: some View {
        TaskListView(tasks: $tasks)
    }
}

#Preview {
    TodoView()
}
