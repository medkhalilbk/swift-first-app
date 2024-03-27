//
//  Place.swift
//  TestApp
//
//  Created by Orangeodc12 on 26/3/2024.
//

import Foundation

struct Place : Identifiable {
    var id = UUID()
    var title : String 
    var distance : Double
    var kinds : [String]
}

