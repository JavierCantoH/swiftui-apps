//
//  PlayerDetailView.swift
//  App03-PlayersList
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

struct PlayerDetailView: View {
    
    var player: Player
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    //                texto central
                    Text(player.name)
                        .font(.largeTitle)
                    //                color letras texto central
                        .foregroundColor(player.retired ? .red : .black)
                }
                .padding(.bottom, 50)
                HStack{
                    VStack{
                        Text("Position: \(player.position)")
                            .padding(.bottom, 20)
                        Text("Team or Country: \(player.teamOrCountry)")
                            .padding(.bottom, 20)
                        Text(player.retired ? "Retired" : "Active")
                    }
                    .font(.title)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        //        navigation
        .navigationTitle(player.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarColor(UIColor(Color(.blue)), UIColor(Color(.white)))
        .toolbar{
            ToolbarItem(placement: .principal) {
                //                navigation title
                Text(player.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .accentColor(.white)
            }
        }
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: Player.Benzema)
    }
}
