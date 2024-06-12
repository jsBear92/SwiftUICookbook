//
//  ContentView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("1. Dealing with Text") {
                    DealingWithText()
                        .navigationTitle("1. Dealing with Text")
                }
                NavigationLink("2. Using Images") {
                    UsingImages()
                        .navigationTitle("2. Using Images")
                }
                NavigationLink("3. Adding Button and Navigating with Them") {
                    AddingButtonsAndNavigatingWithThem()
                        .navigationTitle("3. Adding Button and Navigating with Them")
                }
                NavigationLink("4. Beyond buttons: using advanced pickers") {
                    BeyondButtonsAdvancedPickers()
                        .navigationTitle("4. Beyond buttons: using advanced pickers")
                }
                NavigationLink("5. Applying groups of styles using ViewModifier") {
                    ApplyingGroupsViewModifier()
                        .navigationTitle("5. Applying groups of styles using ViewModifier")
                }
                NavigationLink("6. Separating presentation from content with ViewBuilder") {
                    SeparatingPresentationViewBuilder()
                        .navigationTitle("6. Separating presentation from content with ViewBuilder")
                }
                NavigationLink("7. Simple graphics using SF Symbols") {
                    SimpleGraphicsSFSymbols()
                        .navigationTitle("7. Simple graphics using SF Symbols")
                }
                NavigationLink("8. Integrating UIKit into SwiftUI") {
                    IntegratingUIKitSwitfUI()
                        .navigationTitle("8. Integrating UIKit into SwiftUI")
                }
                NavigationLink("9. Exploring more views and controls") {
                    ExploringMoreViewsAndControls()
                        .navigationTitle("9. Exploring more views and controls")
                }
            }
        }
        .navigationTitle("SwiftUI Cookbook")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
