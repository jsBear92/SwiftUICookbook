//
//  TaskView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: Task
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(task.completed ? Color(UIColor.systemBlue) : Color.secondary)
                .onTapGesture {
                    self.task.completed.toggle()
                }
            
            Text(task.description)
                .font(.title2)
                .padding()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var task = Task.task
    return TaskView(task: $task)
}
