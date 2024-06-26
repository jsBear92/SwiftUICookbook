//
//  BeyondButtonsAdvancedPickers.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct UsingPickers: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitModes = ["Bike", "Car", "Bus"]
    @State private var sliderVal: Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()
    var body: some View {
        Form {
            Section {
                Picker("Transit Modes", selection: $choice) {
                    ForEach(0 ..< transitModes.count, id: \.self) { index in
                        Text("\(transitModes[index])")
                    }
                }
                .pickerStyle(.segmented)
                Text("Current choice: \(transitModes[choice])")
            }
            Section {
                Toggle(isOn: $showText, label: {
                    Text("Show Text")
                })
                if showText {
                    Text("The Text toggle is on")
                }
            }
            Section {
                Slider(value: $sliderVal, in: 0...10, step: 0.001)
                Text("Slider current value \(sliderVal, specifier: "%.1f")")
            }
            Section {
                Stepper("Stepper", value: $stepVal, in: 0...5)
                Text("Stepper current value \(stepVal)")
            }
            Section {
                DatePicker("Please select a date", selection: $gameTime)
            }
            Section {
                DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
    }
}

#Preview {
    UsingPickers()
}
