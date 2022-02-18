//
//  Colour.swift
//  App02-ListaColores
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

struct Colour: Identifiable{
    var id = UUID()
    var name: String
    var colour: Color
    var dark: Bool
}

extension Colour {
    // Flat UI Pallete
    static let Alizarin = Colour(name: "Alizarin", colour: Color("Alizarin"), dark: false)
    static let Amethyst = Colour(name: "Amethyst", colour: Color("Amethyst"), dark: false)
    static let Asbestos = Colour(name: "Asbestos", colour: Color("Asbestos"), dark: false)
    static let BelizeHole = Colour(name: "BelizeHole", colour: Color("BelizeHole"), dark: false)
    static let Carrot = Colour(name: "Carrot", colour: Color("Carrot"), dark: false)
    static let Clouds = Colour(name: "Clouds", colour: Color("Clouds"), dark: false)
    static let Concrete = Colour(name: "Concrete", colour: Color("Concrete"), dark: false)
    static let Emerald = Colour(name: "Emerald", colour: Color("Emerald"), dark: false)
    static let GreenSea = Colour(name: "GreenSea", colour: Color("GreenSea"), dark: false)
    static let MidnightBlue = Colour(name: "MidnightBlue", colour: Color("MidnightBlue"), dark: true)
    static let Nephritis = Colour(name: "Nephritis", colour: Color("Nephritis"), dark: false)
    static let Orange = Colour(name: "Orange", colour: Color("Orange"), dark: true)
    static let PeterRiver = Colour(name: "PeterRiver", colour: Color("PeterRiver"), dark: false)
    static let Promegranate = Colour(name: "Promegranate", colour: Color("Promegranate"), dark: true)
    static let Pumkin = Colour(name: "Pumkin", colour: Color("Pumkin"), dark: true)
    static let Silver = Colour(name: "Silver", colour: Color("Silver"), dark: false)
    static let SunFlower = Colour(name: "SunFlower", colour: Color("SunFlower"), dark: false)
    static let Turquoise = Colour(name: "Turquoise", colour: Color("Turquoise"), dark: false)
    static let WetAsphalt = Colour(name: "WetAsphalt", colour: Color("WetAsphalt"), dark: true)
    static let Wisteria = Colour(name: "Wisteria", colour: Color("Wisteria"), dark: false)
    // American Pallete
    static let AmericanRiver = Colour(name: "AmericanRiver", colour: Color("AmericanRiver"), dark: false)
    static let BrightYarrow = Colour(name: "BrightYarrow", colour: Color("BrightYarrow"), dark: false)
    static let ChiGong = Colour(name: "ChiGong", colour: Color("ChiGong"), dark: true)
    static let CityLights = Colour(name: "CityLights", colour: Color("CityLights"), dark: false)
    static let DraculaOrchid = Colour(name: "DraculaOrchid", colour: Color("DraculaOrchid"), dark: true)
    static let ElectronBlue = Colour(name: "ElectronBlue", colour: Color("ElectronBlue"), dark: false)
    static let ExodusFruit = Colour(name: "ExodusFruit", colour: Color("ExodusFruit"), dark: true)
    static let FadedPoster = Colour(name: "FadedPoster", colour: Color("FadedPoster"), dark: false)
    static let FirstDate = Colour(name: "FirstDate", colour: Color("FirstDate"), dark: false)
    static let GreenDarnerTail = Colour(name: "GreenDarnerTail", colour: Color("GreenDarnerTail"), dark: false)
    static let LightGreenishBlue = Colour(name: "LightGreenishBlue", colour: Color("LightGreenishBlue"), dark: false)
    static let MintLeaf = Colour(name: "MintLeaf", colour: Color("MintLeaf"), dark: true)
    static let OrangeVille = Colour(name: "OrangeVille", colour: Color("OrangeVille"), dark: true)
    static let Pico8Pink = Colour(name: "Pico8Pink", colour: Color("Pico8Pink"), dark: false)
    static let PinkGlamour = Colour(name: "PinkGlamour", colour: Color("PinkGlamour"), dark: false)
    static let PrunusAvium = Colour(name: "PrunusAvium", colour: Color("PrunusAvium"), dark: true)
    static let RobbinsEggBlue = Colour(name: "RobbinsEggBlue", colour: Color("RobbinsEggBlue"), dark: false)
    static let ShyMoment = Colour(name: "ShyMoment", colour: Color("ShyMoment"), dark: false)
    static let SoothingBreeze = Colour(name: "SoothingBreeze", colour: Color("SoothingBreeze"), dark: false)
    static let SourLemon = Colour(name: "SourLemon", colour: Color("SourLemon"), dark: false)
    // Spanish Palette
    static let AlamedaOchre = Colour(name: "AlamedaOchre", colour: Color("AlamedaOchre"), dark: false)
    static let C64Purple = Colour(name: "C64Purple", colour: Color("C64Purple"), dark: false)
    static let CelestialGreen = Colour(name: "CelestialGreen", colour: Color("CelestialGreen"), dark: false)
    static let ChileanFire = Colour(name: "ChileanFire", colour: Color("ChileanFire"), dark: true)
    static let CocodrileTooth = Colour(name: "CocodrileTooth", colour: Color("CocodrileTooth"), dark: false)
    static let Desert = Colour(name: "Desert", colour: Color("Desert"), dark: false)
    static let DevilBlue = Colour(name: "DevilBlue", colour: Color("DevilBlue"), dark: true)
    static let EyeOfNewt = Colour(name: "EyeOfNewt", colour: Color("EyeOfNewt"), dark: true)
    static let FluorescentRed = Colour(name: "FluorescentRed", colour: Color("FluorescentRed"), dark: true)
    static let GreyPorcelain = Colour(name: "GreyPorcelain", colour: Color("GreyPorcelain"), dark: true)
    static let HotStone = Colour(name: "HotStone", colour: Color("HotStone"), dark: false)
    static let JacksonsPurple = Colour(name: "JacksonsPurple", colour: Color("JacksonsPurple"), dark: true)
    static let Liberty = Colour(name: "Liberty", colour: Color("Liberty"), dark: true)
    static let LuckyPoint = Colour(name: "LuckyPoint", colour: Color("LuckyPoint"), dark: true)
    static let MandarinSorbet = Colour(name: "MandarinSorbet", colour: Color("MandarinSorbet"), dark: false)
    static let PalmSpringsSplash = Colour(name: "PalmSpringsSplash", colour: Color("PalmSpringsSplash"), dark: false)
    static let SpicedButternut = Colour(name: "SpicedButternut", colour: Color("SpicedButternut"), dark: false)
    static let SummerSky = Colour(name: "SummerSky", colour: Color("SummerSky"), dark: false)
    static let SwanWhite = Colour(name: "SwanWhite", colour: Color("SwanWhite"), dark: false)
    static let SyntheticPumkin = Colour(name: "SyntheticPumkin", colour: Color("SyntheticPumkin"), dark: false)
    
    static let spanish = [
        AlamedaOchre, C64Purple, CelestialGreen, ChileanFire, CocodrileTooth, Desert, DevilBlue, EyeOfNewt, FluorescentRed, GreyPorcelain, HotStone, JacksonsPurple, Liberty, LuckyPoint, MandarinSorbet, PalmSpringsSplash, SpicedButternut, SummerSky, SwanWhite, SyntheticPumkin
    ]
    
    static let flatUI = [
    AlamedaOchre, C64Purple, CelestialGreen, ChileanFire, CocodrileTooth, Desert, DevilBlue, EyeOfNewt, FluorescentRed, GreyPorcelain, HotStone, JacksonsPurple, Liberty, LuckyPoint, MandarinSorbet, PalmSpringsSplash, SpicedButternut, SummerSky, SwanWhite, SyntheticPumkin
    ]
    
    static let american = [
        AmericanRiver, BrightYarrow, ChiGong, CityLights, DraculaOrchid, ElectronBlue, ExodusFruit, FadedPoster, FirstDate, GreenDarnerTail, LightGreenishBlue, MintLeaf, OrangeVille, Pico8Pink, PinkGlamour, PrunusAvium, RobbinsEggBlue, ShyMoment, SoothingBreeze, SourLemon
    ]
    
}
