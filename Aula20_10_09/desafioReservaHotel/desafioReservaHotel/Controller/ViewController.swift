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
 
        strDatecheckIn = formatterDate(type: "d", dataPicker: dataPickerCheckIn) // d = day of month
        strDateCheckOut = formatterDate(type: "d", dataPicker: dataPickerCheckOut) // d = day of month
        totalDiarias = Int(strDateCheckOut!)! - Int(strDatecheckIn!)! // total daily
        let dayWeekNumber = formatterDate(type: "e", dataPicker: dataPickerCheckIn) //weekday number
        
        
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

