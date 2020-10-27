//
//  Car.swift
//  10_26_exerciseTabbar
//
//  Created by Michel dos Santos on 26/10/20.
//

import Foundation

class Car {
    
    var model: String
    var year: String
    var nameImage: String
    
    init( model: String, year: String, nameImage:String) {
        
        self.model = model
        self.year = year
        self.nameImage = nameImage
    }
}
