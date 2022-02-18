//
//  PlayerModel.swift
//  App03-PlayersList
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

class PlayerModel: ObservableObject{
    @Published var futbol = [Player]()
    @Published var nba = [Player]()
    @Published var tenis = [Player]()
    @Published var americano = [Player]()
    
//    constructor
    init(){
        loadPlayers()
    }
    
    func loadPlayers(){
        futbol = Player.futbol
        nba = Player.nba
        tenis = Player.tenis
        americano = Player.americano
    }
}
