//
//  WeatherRow.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct WeatherRow: View {
    var weather: WeatherInfo
    var body: some View {
        HStack{
            Image(systemName: weather.image)
                .frame(width: 50, alignment: .leading)
            Text("\(weather.temp)ºC")
                .frame(width: 80, alignment: .leading)
            Text(weather.city)
        }
        .font(.system(size: 25))
        .padding()
    }
}

#Preview {
    WeatherRow(weather: WeatherInfo(image: "snow", temp: 5, city: "New York"))
}
