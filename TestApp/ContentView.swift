//
//  ContentView.swift
//  TestApp
//
//  Created by Orangeodc12 on 26/3/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selectedOption = "Tunis"
    
    let arrayOfLocations: [String] = ["Location","France","London"]
    
    let places: [Place] = [
        Place(title: "Place One", distance: 10.3, kinds: ["Test One ", "Test Two"]) ,
        Place(title: "Place Two", distance: 10.3, kinds: ["Test One ", "Test Two"]) ,
        Place(title: "Place Three", distance: 10.3, kinds: ["Test One ", "Test Two", "Test  three"]) ,
        Place(title: "Place Four", distance: 10.3, kinds: ["Test One "]) ,
    ]
    
    var body: some View {
        VStack(){
            HStack{
                VStack{
                    Text("Recent places  \(places.count)" ).font(.headline)
                };
                Spacer()
                VStack{
                    Picker("Choisir votre location", selection:$selectedOption) {
                        ForEach(arrayOfLocations, id:\.self) { place in
                            Text(place)
                        }
                    }
                }
            };
            
        
            VStack{
                ForEach(places,id: \.id){
                    place in
                    VStack{
                        PlaceItemView(place: place)
                    }
                }
            }
            
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity, alignment: .topLeading).padding()
    }
}
#Preview {
    ContentView()
}
