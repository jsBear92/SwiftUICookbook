//
//  UsingCustomRowsInAList.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct UsingCustomRowsInAList: View {
    var weatherData: [WeatherInfo]
    var body: some View {
        List {
            ForEach(weatherData) {weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

#Preview {
    UsingCustomRowsInAList(weatherData: WeatherInfo.weatherData)
}
