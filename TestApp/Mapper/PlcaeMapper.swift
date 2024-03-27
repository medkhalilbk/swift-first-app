//
//  PlcaeMapper.swift
//  TestApp
//
//  Created by Orangeodc12 on 26/3/2024.
//

import Foundation


class PlaceMapper {
   
    let placeDataSource : PlaceDatasource = PlaceDatasource()
    func getAllPlaces(url:String) async -> Result<[Place],Failure> {
        let result = try? await placeDataSource.getAllPlaces(url: <#T##String#>)
    }
}
