//
//  TaskListView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct TaskListView: View {
    @Binding var tasks: [Task]
    var body: some View {
        NavigationStack {
            List {
                ForEach($tasks) { task in
                    TaskView(task: task)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var tasks = Task.tasks
    TaskListView(tasks: $tasks)
}
