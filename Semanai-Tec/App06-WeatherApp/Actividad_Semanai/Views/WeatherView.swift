//
//  ContentView.swift
//  Actividad_Semanai
//
//  Created by Luis Javier Canto Hurtado on 29/10/21.
//

import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var viewModel: WeatherModel
    
    private let defaulticon = "ā"
    private let iconMap = [
        "Drizzle" : "šØ",
        "Thunderstorm" : "ā",
        "Rain" : "š§",
        "Snow" : "āļø",
        "Clear" : "āļø",
        "Clouds" : "āļø",
    ]
    
    var body: some View {
        VStack{
            Text(viewModel.weather.city)
                .font(.largeTitle)
                .padding()
            Text("\(viewModel.weather.temperature) CĀ°")
                .font(.system(size: 70))
                .bold()
            Text(iconMap[viewModel.weather.iconName] ?? defaulticon)
                .font(.largeTitle)
                .padding()
            Text(viewModel.weather.description)
                .font(.system(size: 30))
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: WeatherModel())
    }
}
