//
//  VideoModel.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import Foundation

struct Video:Identifiable,Codable {
    let id:String
    let name:String
    let headline:String
    // Computed Property
    
    var thumnail: String {
        return "video-\(id)"
    }
}
