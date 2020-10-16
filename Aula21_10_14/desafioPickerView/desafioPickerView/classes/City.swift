//
//  City.swift
//  desafioPickerView
//
//  Created by Michel dos Santos on 14/10/20.
//

import Foundation

class City{
    
    var name: String
    var state: String
    var country: String
    var numberOfInhabitants: Int
    var temperature: Float
    
    init(name: String, state: String, country: String, numberOfInhabitants: Int, temperature: Float) {
        self.name = name
        self.state = state
        self.country = country
        self.numberOfInhabitants = numberOfInhabitants
        self.temperature = temperature
    }
    
}
