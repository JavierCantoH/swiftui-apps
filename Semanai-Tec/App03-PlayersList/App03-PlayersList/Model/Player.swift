//
//  Player.swift
//  App03-PlayersList
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

struct Player: Identifiable{
    var id = UUID()
    var name: String
    var player: String
    var position: String
    var teamOrCountry: String
    var retired: Bool
}

extension Player {
    // Futbol
    static let Benzema = Player(name: "Benzema", player: "soccer", position: "Forward", teamOrCountry: "Real Madrid", retired: false)
    static let Pique = Player(name: "Pique", player: "soccer", position: "Defender", teamOrCountry: "Barcelona", retired: false)
    static let Ronaldo = Player(name: "Cristiano Ronaldo",player: "soccer", position: "Forward", teamOrCountry: "Manchester U", retired: false)
    static let Beckam = Player(name: "Beckam", player: "soccer", position: "Forward", teamOrCountry: "Manchester U", retired: true)
    static let Messi = Player(name: "Messi", player: "soccer", position: "Forward", teamOrCountry: "Paris SG", retired: false)
    // NBA
    static let Jordan = Player(name: "Jordan", player: "nba", position: "Shooting guard", teamOrCountry: "Chicago Bulls", retired: true)
    static let James = Player(name: "Lebron J", player: "nba", position: "Shooting guard", teamOrCountry: "Lakers", retired: false)
    static let Curry = Player(name: "Stephen C", player: "nba", position: "Shooting guard", teamOrCountry: "Golden State", retired: false)
    // Tenis
    static let Nadal = Player(name: "Nadal", player: "tenis", position: "Singles", teamOrCountry: "Switzerland", retired: false)
    static let Roger = Player(name: "Roger F", player: "tenis", position: "Singles", teamOrCountry: "Spain", retired: false)
    // Americano
    static let Brady = Player(name: "Tom Brady", player: "americano", position: "Quarterback", teamOrCountry: "Tampa Bay", retired: false)
    static let Peyton = Player(name: "Peyton M", player: "namericanoba", position: "Quarterback", teamOrCountry: "Denver Broncos", retired: true)
    
    
    static let futbol = [
        Benzema, Pique, Ronaldo, Beckam, Messi
    ]
    
    static let nba = [
        Jordan, James, Curry
    ]
    
    static let tenis = [
        Nadal, Roger
    ]
    
    static let americano = [
        Brady, Peyton
    ]
}
