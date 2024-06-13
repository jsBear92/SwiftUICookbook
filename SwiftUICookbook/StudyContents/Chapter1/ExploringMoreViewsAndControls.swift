//
//  ExploringMoreViewsAndControls.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct ExploringMoreViewsAndControls: View {
    @State private var progress = 0.5
    @State private var color = Color.red
    @State private var secondColor = Color.yellow
    @State private var someText = "Initial value"
    var body: some View {
        List {
            Section(header: Text("ProgressViews"), content: {
                ProgressView("Indeterminate progress view")
                ProgressView("Downloading", value: progress, total: 2)
                Button(action: {
                    if (progress < 2) {
                        progress += 0.5
                    }
                }, label: {
                    Text("More")
                })
            })
            Section(header: Text("Labels"), content: {
                Label("Slow", systemImage: "tortoise.fill")
                Label(title: {
                    Text("fast")
                        .font(.title)
                }, icon: {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 40, height: 20, alignment: .center)
                        .overlay(Text("F"))
                })
            })
            Section(header: Text("ColorPicker"), content: {
                ColorPicker(selection: $color, label: {
                    Text("Pick my background")
                        .background(color)
                        .padding()
                })
                ColorPicker("Picker", selection: $secondColor)
            })
            Section(header: Text("Link"), content: {
                Link("Google", destination: URL(string: "https://www.google.com")!)
            })
            Section(header: Text("TextEditor"), content: {
                TextEditor(text: $someText)
                Text("current editor text:\n\(someText)")
            })
            Section(header: Text("Menu"), content: {
                Menu("Actions") {
                    Button("Set TextEditor text to 'magic'") {
                        someText = "magic"
                    }
                    Button(action: {
                        color = Color.green
                    }, label: {
                        Text("Turn first picker green")
                    })
                    Menu("Actions") {
                        Button("Set TextEditor text to 'real magic'") {
                            someText = "real magic"
                        }
                        Button(action: {
                            color = Color.gray
                        }, label: {
                            Text("Turn first picker gray")
                        })
                    }
                }
            })
        }
        .listStyle(.grouped)
    }
}

#Preview {
    ExploringMoreViewsAndControls()
}
