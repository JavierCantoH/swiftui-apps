//
//  Actividad_SemanaiApp.swift
//  Actividad_Semanai
//
//  Created by Luis Javier Canto Hurtado on 29/10/21.
//

import SwiftUI

@main
struct Actividad_SemanaiApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherView(viewModel: WeatherModel())
        }
    }
}
