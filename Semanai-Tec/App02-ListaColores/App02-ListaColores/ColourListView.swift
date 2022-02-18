//
//  ContentView.swift
//  App02-ListaColores
//
//  Created by Luis Javier Canto Hurtado on 27/10/21.
//

import SwiftUI

struct ColourListView: View {
    
    @StateObject var colourModel = ColourModel()
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
                    Section(header: Text("Spanish Pallete")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(colourModel.spanish.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            colour in
                            NavigationLink(destination: ColourDetailView(colour: colour)){
                                Text(colour.name)
                                    .font(.title)
                                    .foregroundColor(colour.dark ? .white : .black)
                            }
                            .listRowBackground(colour.colour)
                        }
                    })
                    Section(header: Text("FlatUI Pallete")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(colourModel.flatUI.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            colour in
                            NavigationLink(destination: ColourDetailView(colour: colour)){
                                Text(colour.name)
                                    .font(.title)
                                    .foregroundColor(colour.dark ? .white : .black)
                            }
                            .listRowBackground(colour.colour)
                        }
                    })
                    Section(header: Text("American Pallete")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            ,content: {
                        ForEach(colourModel.american.filter {
                            search.isEmpty || $0.name.localizedStandardContains(search)
                        }){
                            colour in
                            NavigationLink(destination: ColourDetailView(colour: colour)){
                                Text(colour.name)
                                    .font(.title)
                                    .foregroundColor(colour.dark ? .white : .black)
                            }
                            .listRowBackground(colour.colour)
                        }
                    })
                }
                .listStyle(SidebarListStyle())
                .accentColor(.red)
            }
            .navigationBarTitle("Lista")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(UIColor(Colour.MidnightBlue.colour), UIColor(Colour.Clouds.colour))
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Lista")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Colour.Clouds.colour)
                }
            }
        }
    }
}

struct ColourListView_Previews: PreviewProvider {
    static var previews: some View {
        ColourListView()
    }
}
