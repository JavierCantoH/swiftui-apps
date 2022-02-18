//
//  Weather.swift
//  Actividad_Semanai
//
//  Created by Luis Javier Canto Hurtado on 29/10/21.
//

import SwiftUI

public struct Weather{
    var city: String
    var temperature: String
    var description: String
    var iconName: String
}

extension Weather{
    static let dummy = Weather(city: "---", temperature: "---", description: "---", iconName: "---")
}

