//
//  ViewController.swift
//  desafioReservaHotel
//
//  Created by Michel dos Santos on 09/10/20.
//

import UIKit

enum DaysWeek: String{
    case Monday
    case Tuesday = "Tuesday"
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday

}

class ViewController: UIViewController {
    var hotalJardim = HotelJardimBotanico(name: "Jardim Botanico", classification: 3, weekDayPrice: 110, weekDayPriceReward: 80, weekend: 90, weekendReward: 80)
    
    @IBOutlet weak var dataPickerCheckOut: UIDatePicker!
    @IBOutlet weak var dataPickerCheckIn: UIDatePicker!
    
  
    @IBAction func actionDataPickerCheckIn(_ sender: UIDatePicker) {
      
    }
    
    @IBAction func actionDataPickerCheckOut(_ sender: UIDatePicker) {
     
    }
    
    @IBAction func buttonMelhorHotel(_ sender: Any) {
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = DateFormatter.Style.short
        dateformatter.dateFormat = "yyyy-MM-dd"
        let strDateCheckOut = dateformatter.string(from: dataPickerCheckOut.date)
        let strDatecheckIn = dateformatter.string(from: dataPickerCheckIn.date)
       
        print(Int(strDateCheckOut)! - Int(strDatecheckIn)!)
        
        dateformatter.dateFormat = "e"
        
        let teste = dateformatter.string(from: dataPickerCheckIn.date)
        let teste1 = dateformatter.string(from: dataPickerCheckOut.date.advanced(by: 60 * 60 * 24))
        
        print(teste,teste1)
        
        
    }
    
//    func day() {
//
//
////        if day == 1 || day == 7 {
////
////        }
//
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        dataPickerCheckOut.datePickerMode = .date
        
        
        
    }


}

