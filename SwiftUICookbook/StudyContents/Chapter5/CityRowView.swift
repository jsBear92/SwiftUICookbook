//
//  CityRowView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct CityRowView: View {
    let city: City
    
    var body: some View {
        VStack(alignment: .leading, content: {
            LabeledContent {
                Text(city.state)
            } label: {
                Text(city.name)
                    .font(.title)
            }
            LabeledContent("Population") {
                Text(city.formattedPopulation)
                    .font(.body.monospacedDigit())
            }
            LabeledContent("Area") {
                Text(city.formattedArea)
                    .font(.body.monospacedDigit())
            }
        })
    }
}

#Preview {
    CityRowView(city: .top20USCities.first!)
        .padding()
}
