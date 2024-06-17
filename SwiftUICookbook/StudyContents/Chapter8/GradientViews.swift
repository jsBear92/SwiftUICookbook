//
//  GradientViews.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

extension Text {
    func bigLight() -> some View {
        font(.system(size: 80))
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
            .foregroundStyle(.white)
    }
}

struct LinearGridGradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange, .green, .blue, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Text("Linear Gradient")
                .bigLight()
        }
    }
}

struct RadialGradientView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.orange, .green, .blue, .black]), center: .center, startRadius: 20, endRadius: 500)
            Text("Radial Gradient")
                .bigLight()
        }
    }
}

struct EllipticalGradientView: View {
    var body: some View {
        ZStack {
            EllipticalGradient(gradient: Gradient(colors: [.orange, .green, .blue, .black]), center: .center, startRadiusFraction: 0, endRadiusFraction: 0.75)
            Text("Elliptical Gradient")
                .bigLight()
        }
    }
}

struct AngularGradientView: View {
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.orange, .green, .blue, .black]), center: .center)
            Text("Angular Gradient")
                .bigLight()
        }
    }
}

struct GradientViews: View {
    @State private var selectedGradient = 0
    @ViewBuilder var content : some View {
        switch selectedGradient {
        case 0:
            LinearGridGradientView()
        case 1:
            RadialGradientView()
        case 2:
            EllipticalGradientView()
        default:
            AngularGradientView()
        }
    }
    var body: some View {
        ZStack(alignment: .top) {
            content
                .edgesIgnoringSafeArea(.all)
            
            Picker(selection: $selectedGradient) {
                Text("Linear").tag(0)
                Text("Radial").tag(1)
                Text("Elliptical").tag(2)
                Text("Angular").tag(3)
            } label: {
                Text("Select Gradient")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 32)

        }
    }
}

#Preview {
    GradientViews()
}
