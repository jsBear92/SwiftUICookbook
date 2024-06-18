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
                DisclosureGroup("Chapter 1 - Basic SwiftUI", content: {
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
                })
                DisclosureGroup("Chapter 2 - Scrollable Contents", content: {
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
                DisclosureGroup("Chapter 3 - Advanced Components", content: {
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
                DisclosureGroup("Chapter 4 - SwiftUI Preview", content: {
                    NavigationLink("1-1. Using the live preview canvas in Xcode15 - colorscheme") {
                        CanvasPreview()
                            .navigationTitle("1-1. Using the live preview canvas in Xcode15 - colorscheme")
                    }
                    NavigationLink("1-2. Using the live preview canvas in Xcode15 - landscape") {
                        PostView(title: "Test Title", text: "test test test", imageName: "sun.horizon.fill")
                            .navigationTitle("1-2. Using the live preview canvas in Xcode15 - landscape")
                    }
                    NavigationLink("2. Previewing a view in a NaviagationStack") {
                        PreviewingInNavigationStack()
                            .navigationTitle("2. Previewing a view in a NaviagationStack")
                    }
                    NavigationLink("3. Preview a view with different traits") {
                        PreviewingWithTraits()
                        .navigationTitle("3. Preview a view with different traits")
                    }
                    NavigationLink("4. Previewing a view on different devices") {
                        PreviewOnDifferentDevices()
                        .navigationTitle("4. Previewing a view on different devices")
                    }
                    NavigationLink("5. Using mock data for previews") {
                        let testInsect = Insect(id: 1, imageName: "grasshopper", name: "grass", habitat: "rocks", description: "none")
                        let testInsects: [Insect] = {
                            guard let url = Bundle.main.url(forResource: "insectData", withExtension: "json"),
                                  let data = try? Data(contentsOf: url)
                            else {
                                return []
                            }
                            let decoder = JSONDecoder()
                            let array = try?decoder.decode([Insect].self, from: data)
                            return array ?? [testInsect]
                        }()
                        return UsingMockDataForPreviews(insects: testInsects)
                        .navigationTitle("5. Using mock data for previews")
                    }
                })
                DisclosureGroup("Chapter 5 - Grouping Views", content: {
                    NavigationLink("1. Showing and hiding sections in forms") {
                        SignUp()
                        .navigationTitle("1. Showing and hiding sections in forms")
                    }
                    NavigationLink("2. Disabling and enabling items in forms") {
                        FormFieldDisable()
                        .navigationTitle("2. Disabling and enabling items in forms")
                    }
                    NavigationLink("3. Filling out forms easily using Focus and Submit") {
                        FocusAndSubmit()
                        .navigationTitle("3. Filling out forms easily using Focus and Submit")
                    }
                    NavigationLink("4. Creating multi-column lists with Table") {
                        MultiColumnTable()
                        .navigationTitle("4. Creating multi-column lists with Table")
                    }
                    NavigationLink("5. Using Grid, a powerful two-dimensional layout") {
                        TwoDimensionalLayout()
                            .navigationTitle("5. Using Grid, a powerful two-dimensional layout")
                    }
                })
                DisclosureGroup("Chapter 6 - Presenting Views Modally") {
                    NavigationLink("1. Presenting alerts") {
                        PresentingAlerts()
                            .navigationTitle("1. Presenting alerts")
                    }
                    NavigationLink("2. Adding actions to alert buttons") {
                        AlertsWithActions()
                        .navigationTitle("2. Adding actions to alert buttons")
                    }
                    NavigationLink("3. Presenting confirmation dialogs") {
                        PresentingConfirmationDialogs()
                        .navigationTitle("3. Presenting confirmation dialogs")
                    }
                    NavigationLink("4. Presenting new views using sheets and full-screen covers") {
                        PresentingSheets()
                        .navigationTitle("4. Presenting new views using sheets and full-screen covers")
                    }
                    NavigationLink("5. Displaying popovers") {
                        DisplayingPopovers()
                        .navigationTitle("5. Displaying popovers")
                    }
                    NavigationLink("6. Creating context menus") {
                        DisplayingContextMenus()
                        .navigationTitle("6. Creating context menus")
                    }
                }
                DisclosureGroup("Chapter 7 - Navigation Containers") {
                    NavigationLink("1. Simple navigation with NavigationStack") {
                        SimpleNavigation()
                            .navigationTitle("1. Simple navigation with NavigationStack")
                    }
                    NavigationLink("2. Typed data-driven navigation with NavigationStack") {
                        ModernNavigation()
                            .navigationTitle("2. Typed data-driven navigation with NavigationStack")
                    }
                    NavigationLink("3. Untyped data-driven navigation with NavigationStack") {
                        UntypedModernNavigation()
                        .navigationTitle("3. Untyped data-driven navigation with NavigationStack")
                    }
                    NavigationLink("4. Navigating between multiple views with TabView") {
                        UsingTabView()
                        .navigationTitle("4. Navigating between multiple views with TabView")
                    }
                    NavigationLink("5. Programmatically switching tabs on a TabView") {
                        TabViewWithGestures()
                        .navigationTitle("5. Programmatically switching tabs on a TabView")
                    }
                }
                DisclosureGroup("Chapter 8 - Drawing with SwiftUI") {
                    NavigationLink("1. Using SwiftUI's built-in shapes") {
                        BuiltInShapes()
                        .navigationTitle("1. Using SwiftUI's built-in shapes")
                    }
                    NavigationLink("2. Drawing a custom shape") {
                        RhombusApp()
                        .navigationTitle("2. Drawing a custom shape")
                    }
                    NavigationLink("3. Drawing a curved custom shape") {
                        HeartView()
                            .navigationTitle("3. Drawing a curved custom shape")
                    }
                    NavigationLink("4. Drawing using the Canvas API") {
                        Drawing()
                        .navigationTitle("4. Drawing using the Canvas API")
                    }
                    NavigationLink("5. Implementing a progress ring") {
                        ProgressRing()
                        .navigationTitle("5. Implementing a progress ring")
                    }
                    NavigationLink("6. Implementing a Tic-Tac-Toe game in SwiftUI") {
                        TicTacToe()
                        .navigationTitle("6. Implementing a Tic-Tac-Toe game in SwiftUI")
                    }
                    NavigationLink("7. Rendering a gradient view in SwiftUI") {
                        GradientViews()
                            .navigationTitle("7. Rendering a gradient view in SwiftUI")
                    }
                }
                DisclosureGroup("Chapter 9 - Animating with SwiftUI") {
                    NavigationLink("1. Creating basic animations") {
                        BasicAnimations()
                        .navigationTitle("1. Creating basic animations")
                    }
                    NavigationLink("2. Transforming shapes") {
                        AnimateTriangleShape()
                        .navigationTitle("2. Transforming shapes")
                    }
                    NavigationLink("3. Creating a banner with a spring animation") {
                        BannerWithASpringAnimation()
                        .navigationTitle("3. Creating a banner with a spring animation")
                    }
                    NavigationLink("4. Applying a delay to an animation view modifier to create a sequence of animations") {
                        DelayedAnimations()
                            .navigationTitle("4. Applying a delay to an animation view modifier to create a sequence of animations")
                    }
                    NavigationLink("5. Applying multiple animations to a view") {
                        MultipleAnimations()
                        .navigationTitle("5. Applying multiple animations to a view")
                    }
                    NavigationLink("6. Chained animations with PhaseAnimator") {
                        ChainedAnimations()
                        .navigationTitle("6. Chained animations with PhaseAnimator")
                    }
                    NavigationLink("7. Custom animations with KeyframeAnimator") {
                        CustomAnimations()
                        .navigationTitle("7. Custom animations with KeyframeAnimator")
                    }
                    NavigationLink("8. ImplementingA stretchable header in SwiftUI") {
                        StretchableHeader()
                        .navigationTitle("8. ImplementingA stretchable header in SwiftUI")
                    }
                    NavigationLink("9. Implementing a swipeable stack of cards in SwiftUI") {
                        SwipeableCards()
                        .navigationTitle("9. Implementing a swipeable stack of cards in SwiftUI")
                    }
                }
                DisclosureGroup("Chapter 10 - Driving SwiftUI with Data") {
                    NavigationLink("1. Using @State to drive a view's behavior") {
                        StaticTodoList()
                            .navigationTitle("1. Using @State to drive a view's behavior")
                    }
                    NavigationLink("2. Using @Binding to pass a state variable to child views") {
                        DynamicTodoList()
                            .navigationTitle("2. Using @Binding to pass a state variable to child views")
                    }
                    NavigationLink("3. Using @StateObject to preserve the model's life cycle") {
                        UsingStateObject()
                        .navigationTitle("3. Using @StateObject to preserve the model's life cycle")
                    }
                    NavigationLink("4. Sharing state objects with multiple Views using @EnvironmentObject") {
                        SongPlayer()
                            .environmentObject(MusicPlayer())
                            .navigationTitle("4. Sharing state objects with multiple Views using @EnvironmentObject")
                    }
                    NavigationLink("5. Using Observation to manage model data") {
                        ReminderApp()
                        .navigationTitle("5. Using Observation to manage model data")
                    }
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
