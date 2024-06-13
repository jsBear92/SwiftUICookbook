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
            List {
                Section(header: Text("Chapter 1")) {
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
                Section(header: Text("Chapter 2"), content: {
                    NavigationLink("1. Using scroll views") {
                        UsingScrollViews()
                            .navigationTitle("1. Using scroll views")
                    }
                    NavigationLink("2. Creating a List of static items") {
                        CreatingAListOfStaticItems()
                            .navigationTitle("2. Creating a List of static items")
                    }
                    NavigationLink("3. Using custom rows in a List") {
                        UsingCustomRowsInAList(weatherData: WeatherInfo.weatherData)
                            .navigationTitle("3. Using custom rows in a List")
                    }
                    NavigationLink("4. Adding rows to a List") {
                        AddingRowsToAList()
                            .navigationTitle("4. Adding rows to a List")
                    }
                    NavigationLink("5. Deleting rows from a List") {
                        DeletingRowsFromAList()
                            .navigationTitle("5. Deleting rows from a List")
                    }
                    NavigationLink("6. Creating an editable List view") {
                        CreatingAnEditableListView()
                            .navigationTitle("6. Creating an editable List view")
                    }
                    NavigationLink("7. Moving the rows in a List view") {
                        MovingTheRowsInAListView()
                            .navigationTitle("7. Moving the rows in a List view")
                    }
                    NavigationLink("8. Adding Sections to a list") {
                        AddingSectionsToAList()
                            .navigationTitle("8. Adding Sections to a list")
                    }
                    NavigationLink("9. Using searchable lists") {
                        UsingSearchableLists()
                            .navigationTitle("9. Using searchable lists")
                    }
                    NavigationLink("10. Using searchable lists with scopes") {
                        UsingSearchableListsWithScopes()
                            .navigationTitle("10. Using searchable lists with scopes")
                    }
                })
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
