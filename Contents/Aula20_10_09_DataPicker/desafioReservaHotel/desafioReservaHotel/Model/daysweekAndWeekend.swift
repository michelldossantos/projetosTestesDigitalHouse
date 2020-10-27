//
//  daysweek.swift
//  desafioReservaHotel
//
//  Created by Michel dos Santos on 10/10/20.
//

import Foundation

func dayWeeksAndWeekend(dayCheckIn: String, totalDiarias: Int) -> [Int]  {
    var i = 1
    var dayCheckint = Int(dayCheckIn)
    var dayweek = 0
    var dayweekend = 0
    var days = [Int]()
    
    while  i  <= Int(totalDiarias){
        if dayCheckint != 7 && dayCheckint != 1{
            dayweek += 1
        }else{
            if dayCheckint! == 7  {
                dayCheckint = 0
            }
            dayweekend += 1
        }
        dayCheckint! += 1
        i += 1
        

    }
    days.append(dayweek)
    days.append(dayweekend)
    return days
    
}
