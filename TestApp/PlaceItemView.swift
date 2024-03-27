//
//  PlaceItemView.swift
//  TestApp
//
//  Created by Orangeodc12 on 26/3/2024.
//

import SwiftUI
import CoreData
import Foundation


struct PlaceItemView: View {
    var place:Place
    var body : some View {
        Button{
            print("touched")
        }label: {
            HStack{
                VStack(alignment:.leading){
                    
                    Text(place.title )
                    HStack{
                        
                        ForEach(place.kinds,id:\.self){
                            item in
                            Text(item).font(.system(size: 10)).padding(.vertical,4).padding(.horizontal,12).background(RoundedRectangle(cornerRadius: 12).fill(.gray.opacity(0.2)))
                        }
                    }
                    
                }
                Spacer()
                VStack{
                    
                    Image(systemName: "star").padding(.bottom,5);
                    Text(String(format: "%.1f m ",place.distance))
                }
                
                
            }.frame(maxWidth: .infinity, alignment: .leading).padding()
        }.buttonStyle(.plain)
    Divider()
        }
    }
#Preview {
    
    PlaceItemView(place : Place(title: "Place Three", distance: 10.3, kinds: ["Test One ", "Test Two", "Test  three"]))
}
