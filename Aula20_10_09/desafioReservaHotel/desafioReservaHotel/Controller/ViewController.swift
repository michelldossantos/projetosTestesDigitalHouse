//
//  ViewController.swift
//  desafioReservaHotel
//
//  Created by Michel dos Santos on 09/10/20.
//

import UIKit

//enum DaysWeek: String{
//    case Monday
//    case Tuesday = "Tuesday"
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//    case Sunday
//
//}





class ViewController: UIViewController {
    var totalDiarias: Int = 0
    var strDatecheckIn: String?
    var strDateCheckOut: String?
    
    var hotalJardim = HotelJardimBotanico(name: "Jardim Botanico", classification: 3, weekDayPrice: 110, weekDayPriceReward: 80, weekend: 90, weekendReward: 80)
    
    
   //MARK: Outlet
    @IBOutlet weak var dataPickerCheckOut: UIDatePicker!
    @IBOutlet weak var dataPickerCheckIn: UIDatePicker!

   //MARK: Action
    @IBAction func buttonMelhorHotel(_ sender: Any) {
 
//        strDatecheckIn = formatterDate(type: "d", dataPicker: dataPickerCheckIn) // d = day of month
//        strDateCheckOut = formatterDate(type: "d", dataPicker: dataPickerCheckOut) // d = day of month
//        totalDiarias = Int(strDateCheckOut!)! - Int(strDatecheckIn!)! // total daily
//        let dayWeekNumber = formatterDate(type: "e", dataPicker: dataPickerCheckIn) //weekday number
        let dataChekin = dataPickerCheckIn.date
        let dataCheckOut = dataPickerCheckOut.date
        
        let days = Calendar.current.dateComponents([.day], from: dataChekin, to: dataCheckOut)
        var count = 0
        
        print(Int(days.day!))
        
        while count <= days.day!{
        
        if Calendar.current.isDateInWeekend(data){
            print("FINDI")
        }
        else{
           print( "Semana")
        }
            dataPickerCheckIn.date = Calendar.current.date(byAdding: .day, value: 1, to: dataPickerCheckIn.date)!
        count += 1
        }
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       

    }


}

