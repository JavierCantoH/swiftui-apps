//
//  WeatherViewModel.swift
//  Actividad_Semanai
//
//  Created by Luis Javier Canto Hurtado on 29/10/21.
//

import SwiftUI
import Alamofire


class WeatherModel: ObservableObject {
    @Published var weather: Weather = Weather.dummy
    
    
    init() {
        loadWeatherData()
    }
    
    func loadWeatherData() {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(ciudadApi)&appid=\(apikey)") else {
            fatalError("La url no es corecta o no se ha podido acceder:")
        }
        
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).validate(statusCode: 200..<300).responseData { data in
            let json = try! JSON(data: data.data!)
//                       print(json)
            //            print(json["name"].stringValue)
//            print("--------- linea -------")
//                        print(json["main"]["temp"].doubleValue)
            self.weather = Weather(
                city: json["name"].stringValue,
                temperature: json["main"]["temp"].stringValue,
                description: json["weather"][0]["description"].stringValue,
                iconName: json["weather"][0]["main"].stringValue)
        }
    }
}
