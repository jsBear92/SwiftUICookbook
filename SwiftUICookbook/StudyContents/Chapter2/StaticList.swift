//
//  CreatingAListOfStaticItems.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct WeatherTestInfo: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}

struct CreatingAListOfStaticItems: View {
    let weatherTestData: [WeatherTestInfo] = [
        WeatherTestInfo(image: "snow", temp: 5, city: "New York"),
        WeatherTestInfo(image: "cloud", temp:5, city:"Kansas City"),
        WeatherTestInfo(image: "sun.max", temp: 80, city:"San Francisco"),
        WeatherTestInfo(image: "snow", temp: 5, city:"Chicago"),
        WeatherTestInfo(image: "cloud.rain", temp: 49, city:"Washington DC"),
        WeatherTestInfo(image: "cloud.heavyrain", temp: 60, city:"Seattle"),
        WeatherTestInfo(image: "sun.min", temp: 75, city:"Baltimore"),
        WeatherTestInfo(image: "sun.dust", temp: 65, city:"Austin"),
        WeatherTestInfo(image: "sunset", temp: 78, city:"Houston"),
        WeatherTestInfo(image: "moon", temp: 80, city:"Boston"),
        WeatherTestInfo(image: "moon.circle", temp: 45, city:"Denver"),
        WeatherTestInfo(image: "cloud.snow", temp: 8, city:"Philadelphia"),
        WeatherTestInfo(image: "cloud.hail", temp: 5, city:"Memphis"),
        WeatherTestInfo(image: "cloud.sleet", temp:5, city:"Nashville"),
        WeatherTestInfo(image: "sun.max", temp: 80, city:"San Francisco"),
        WeatherTestInfo(image: "cloud.sun", temp: 5, city:"Atlanta"),
        WeatherTestInfo(image: "wind", temp: 88, city:"Las Vegas"),
        WeatherTestInfo(image: "cloud.rain", temp: 60, city:"Phoenix"),
    ]
    
    var body: some View {
        List {
            ForEach(weatherTestData) {weather in
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
    }
}

#Preview {
    CreatingAListOfStaticItems()
}
