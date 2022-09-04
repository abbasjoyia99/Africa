//
//  LocationModel.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import Foundation
import MapKit

struct NationalParkLocation:Codable,Identifiable {
    
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    var location:CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
