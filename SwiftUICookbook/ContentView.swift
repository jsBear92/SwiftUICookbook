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
                        FormattedText()
                            .navigationTitle("1. Dealing with Text")
                    }
                    NavigationLink("2. Using Images") {
                        UsingImages()
                            .navigationTitle("2. Using Images")
                    }
                    NavigationLink("3. Adding Button and Navigating with Them") {
                        Buttons()
                            .navigationTitle("3. Adding Button and Navigating with Them")
                    }
                    NavigationLink("4. Beyond buttons: using advanced pickers") {
                        UsingPickers()
                            .navigationTitle("4. Beyond buttons: using advanced pickers")
                    }
                    NavigationLink("5. Applying groups of styles using ViewModifier") {
                        UsingViewModifiers()
                            .navigationTitle("5. Applying groups of styles using ViewModifier")
                    }
                    NavigationLink("6. Separating presentation from content with ViewBuilder") {
                        UsingViewBuilder()
                            .navigationTitle("6. Separating presentation from content with ViewBuilder")
                    }
                    NavigationLink("7. Simple graphics using SF Symbols") {
                        UsingSFSymbols()
                            .navigationTitle("7. Simple graphics using SF Symbols")
                    }
                    NavigationLink("8. Integrating UIKit into SwiftUI") {
                        UIKitToSwiftUI()
                            .navigationTitle("8. Integrating UIKit into SwiftUI")
                    }
                    NavigationLink("9. Exploring more views and controls") {
                        MoreViewsAndControls()
                            .navigationTitle("9. Exploring more views and controls")
                    }
                }
                Section(header: Text("Chapter 2"), content: {
                    NavigationLink("1. Using scroll views") {
                        WeScroll()
                            .navigationTitle("1. Using scroll views")
                    }
                    NavigationLink("2. Creating a List of static items") {
                        StaticList()
                            .navigationTitle("2. Creating a List of static items")
                    }
                    NavigationLink("3. Using custom rows in a List") {
                        CustomRows(weatherData: WeatherInfo.weatherData)
                            .navigationTitle("3. Using custom rows in a List")
                    }
                    NavigationLink("4. Adding rows to a List") {
                        ListRowAdd()
                            .navigationTitle("4. Adding rows to a List")
                    }
                    NavigationLink("5. Deleting rows from a List") {
                        ListRowDelete()
                            .navigationTitle("5. Deleting rows from a List")
                    }
                    NavigationLink("6. Creating an editable List view") {
                        ListRowEdit()
                            .navigationTitle("6. Creating an editable List view")
                    }
                    NavigationLink("7. Moving the rows in a List view") {
                        MovingListRows()
                            .navigationTitle("7. Moving the rows in a List view")
                    }
                    NavigationLink("8. Adding Sections to a list") {
                        ListWithSections()
                            .navigationTitle("8. Adding Sections to a list")
                    }
                    NavigationLink("9. Creating editable collections") {
                        EditableListsFields()
                            .navigationTitle("9. Creating editable collections")
                    }
                    NavigationLink("10. Using searchable lists") {
                        SearchableLists()
                            .navigationTitle("10. Using searchable lists")
                    }
                    NavigationLink("11. Using searchable lists with scopes") {
                        SearchableListsWithScopes()
                            .navigationTitle("11. Using searchable lists with scopes")
                    }
                })
                Section(header: Text("Chapter 3"), content: {
                    NavigationLink("1. Using LazyHStack and LazyVStack") {
                        LazyStacks()
                            .navigationTitle("1. Using LazyHStack and LazyVStack")
                    }
                    NavigationLink("2. Displaying tabular content with LazyHGrid and LazyVGrid") {
                        LazyStacks()
                            .navigationTitle("2. Displaying tabular content with LazyHGrid and LazyVGrid")
                    }
                    NavigationLink("3. Scrolling programmatically") {
                        ScrollViewReaders()
                            .navigationTitle("3. Scrolling programmatically")
                    }
                    NavigationLink("4. Displaying hierarchical content in expanding lists") {
                        ExpandingLists()
                        .navigationTitle("4. Displaying hierarchical content in expanding lists")
                    }
                    NavigationLink("5. Using disclosure groups to hide and show content") {
                        DisclosureGroups()
                        .navigationTitle("5. Using disclosure groups to hide and show content")
                    }
                    NavigationLink("6. Creating SwiftUI widgets") {
                        TodoView()
                        .navigationTitle("6. Creating SwiftUI widgets")
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
