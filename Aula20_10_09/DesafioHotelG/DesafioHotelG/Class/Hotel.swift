//
//  Hotel.swift
//  DesafioHotelG
//
//  Created by Michel dos Santos on 12/10/20.
//

import UIKit


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
    
    func valorPagar(weekends: Int, weekDays: Int, reward: UISwitch) -> Float {

        
        var total: Float = 0
        if reward.isOn {

            total = (weekDayPriceReward * Float( weekDays)) + (weekendReward * Float( weekends))
        }else{
            total = (weekDayPrice * Float( weekDays)) + (weekend * Float( weekends))
        }
        return total
    }

}

class HotelJardimBotanico: Hotel{
    
    
    
}



    


class HotelParqueDasFlores: Hotel {
    
    
    
}

class HotelMarAtlantico: Hotel {
    
    
    
}
