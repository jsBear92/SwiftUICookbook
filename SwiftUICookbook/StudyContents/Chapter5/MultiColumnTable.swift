//
//  MultiColumnTable.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct MultiColumnTable: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    private var isCompact: Bool { horizontalSizeClass == .compact }
    static let populationComparator = KeyPathComparator(
        \City.population, order: .reverse)
    @State private var cities: [City] = City.top20USCities.sorted(
        using: populationComparator)
    @State private var sortOrder = [
        populationComparator, KeyPathComparator(\City.state),
        KeyPathComparator(\City.name), KeyPathComparator(\City.area),
    ]
    @State private var selection = Set<City.ID>()
    var body: some View {
        NavigationStack {
            Table(cities, selection: $selection, sortOrder: $sortOrder) {
                TableColumn("Name", value: \.name) {
                    city in
                    if isCompact {
                        CityRowView(city: city)
                    } else {
                        Text(city.name)
                    }
                }
                TableColumn("State", value: \.state)
                TableColumn("Population", value: \.population) {
                    city in
                    Text(city.formattedPopulation)
                        .font(.body.monospacedDigit())
                        .frame(minWidth: 100, alignment: .trailing)

                }
                .width(max: 150)
                TableColumn("Area", value: \.area) {
                    city in
                    Text(city.formattedArea)
                        .font(.body.monospacedDigit())
                        .frame(minWidth: 100, alignment: .trailing)
                }
                .width(max: 150)
            }
            .navigationTitle("Top 20 US cities")
            .onChange(
                of: sortOrder,
                {
                    _, newOrder in
                    cities.sort(using: newOrder)
                }
            )
            .onChange(
                of: selection,
                {
                    print(
                        "Selected = {\(Array(selection).sorted().joined(separator: "|"))"
                    )
                })
        }
    }
}

#Preview {
    MultiColumnTable()
}
