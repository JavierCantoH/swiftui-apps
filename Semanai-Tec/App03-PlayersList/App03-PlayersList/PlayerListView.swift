//
//  ContentView.swift
//  App03-PlayersList
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//
import SwiftUI

struct PlayerListView: View {
    
    @StateObject var playerModel = PlayerModel()
    @State var search: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Búsqueda", text: $search)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal,20)
                    .padding(.top, 10)
                    .font(.title)
                List{
                    Section(header: Text("Futbol ⚽️")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(playerModel.futbol.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            player in
                            VStack{
                                NavigationLink(destination: PlayerDetailView(player: player), label: {
                                    Text(player.name)
                                        .font(.title)
                                        .foregroundColor(player.retired ? .black : .black)
                                })
                            }
                            .listRowBackground(player.retired ? Color.red : Color.green)
                        }
                    })
                    Section(header: Text("NBA 🏀")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(playerModel.nba.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            player in
                            VStack{
                                NavigationLink(destination: PlayerDetailView(player: player), label: {
                                    Text(player.name)
                                        .font(.title)
                                        .foregroundColor(player.retired ? .black : .black)
                                })
                            }
                            .listRowBackground(player.retired ? Color.red : Color.orange)
                        }
                    })
                    Section(header: Text("Tenis 🎾")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(playerModel.tenis.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            player in
                            VStack{
                                NavigationLink(destination: PlayerDetailView(player: player), label: {
                                    Text(player.name)
                                        .font(.title)
                                        .foregroundColor(player.retired ? .black : .black)
                                })
                            }
                            .listRowBackground(player.retired ? Color.red : Color.yellow)
                        }
                    })
                    Section(header: Text("Americano 🏈")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(playerModel.americano.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            player in
                            VStack{
                                NavigationLink(destination: PlayerDetailView(player: player), label: {
                                    Text(player.name)
                                        .font(.title)
                                        .foregroundColor(player.retired ? .black : .white)
                                })
                            }
                            .listRowBackground(player.retired ? Color.red : Color.brown)
                        }
                    })
                }
                .listStyle(SidebarListStyle())
                .accentColor(.red)
            }
            .navigationBarTitle("GOATS")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(UIColor(Color(.blue)), UIColor(Color(.blue)))
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("GOATS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
        .accentColor(.white)
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
