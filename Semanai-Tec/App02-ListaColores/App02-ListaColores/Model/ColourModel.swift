//
//  ColourModel.swift
//  App02-ListaColores
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

class ColourModel: ObservableObject{
    @Published var spanish = [Colour]()
    @Published var flatUI = [Colour]()
    @Published var american = [Colour]()
    
//    constructor
    init(){
        loadColours()
    }
    
    func loadColours(){
        spanish = Colour.spanish
        flatUI = Colour.flatUI
        american = Colour.american
    }
}
