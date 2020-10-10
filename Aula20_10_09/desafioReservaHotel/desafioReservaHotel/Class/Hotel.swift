//
//  Hotel.swift
//  desafioReservaHotel
//
//  Created by Michel dos Santos on 09/10/20.
//
//
//import Foundation
//protocol rates {
//    func rate()
//}

class Hotel{
   
    
    var name: String
    var classification: Int
    var weekDayPrice: Float
    var weekDayPriceReward: Float
    var weekend: Float
    var weekendReward: Float
    
    
    init(name: String, classification: Int,weekDayPrice: Float,weekDayPriceReward: Float,weekend: Float, weekendReward: Float ) {
        
        self.name = name
        self.classification = classification
        self.weekDayPrice = weekDayPrice
        self.weekDayPriceReward = weekDayPriceReward
        self.weekend = weekend
        self.weekendReward = weekendReward
       
    }

}

class HotelJardimBotanico: Hotel{
    
}



    


class HotelClassification3: Hotel {
    
}
