//
//  ViewController.swift
//  DesafioHotelG
//
//  Created by Michel dos Santos on 12/10/20.
//



// TODO: MVc

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var labelBestHotelViewController: UILabel!
   
    @IBOutlet weak var dataPickerCheckIn: UIDatePicker!
    @IBOutlet weak var dataPickerCheckOut: UIDatePicker!
    @IBOutlet weak var rewardSwitch: UISwitch!
    @IBAction func buttonBestHotel(_ sender: UIButton) {
        var count = 0
        var weekends = 0
        var weekDays = 0
        var dateCheckIn: Date?
        var dateCheckOut: Date?
        var priceTotalHotelParque: Float = 0
        var priceTotalHotelJardim: Float = 0
        var priceTotalHotelMar: Float = 0
        
        
        
        let hotelParque = HotelParqueDasFlores(name: "Hotel Parque das Flores", classification: 3, weekDayPrice: 110, weekDayPriceReward: 80, weekend: 90, weekendReward: 80)
        let hotelJardim = HotelJardimBotanico(name: " Hotel Jardim Botanico", classification: 4, weekDayPrice: 160, weekDayPriceReward: 110, weekend: 60, weekendReward: 50)
        let hotelMar = HotelMarAtlantico(name: "Hotel Mar Atlântico", classification: 5, weekDayPrice: 220, weekDayPriceReward: 100, weekend: 150, weekendReward: 40)
        
        dateCheckIn = dataPickerCheckIn.date
        dateCheckOut = dataPickerCheckOut.date
        
        
        
        
        let stays = Calendar.current.dateComponents([.day], from: dateCheckIn!, to: dateCheckOut!)
        print(Int(stays.day!))
        
        while count < Int(stays.day!){
            dateCheckIn = Calendar.current.date(byAdding: .day, value: 1, to: dateCheckIn!)
            if Calendar.current.isDateInWeekend(dateCheckIn!){
                weekends += 1
            }else{
                weekDays += 1
            }

            
            
            count += 1
        }
        print("dias de semana: \(weekDays) \nFindi \(weekends)")
       priceTotalHotelParque = hotelParque.valorPagar(weekends: weekends, weekDays: weekDays, reward: rewardSwitch )
        priceTotalHotelJardim = hotelJardim.valorPagar(weekends: weekends, weekDays: weekDays, reward: rewardSwitch )
        priceTotalHotelMar = hotelMar.valorPagar(weekends: weekends, weekDays: weekDays, reward: rewardSwitch )
        
        
        print("Hotel Mar:\(priceTotalHotelMar) \nHotel Jardim\(priceTotalHotelJardim) \nHotel Parque \(priceTotalHotelParque)")
        
        
        if priceTotalHotelParque < priceTotalHotelJardim && priceTotalHotelParque < priceTotalHotelMar{
            
            if let telamodal = UIStoryboard(name: "bestHotel", bundle: nil).instantiateInitialViewController() as? bestHotelViewController {
                
                
                present(telamodal, animated: true, completion: nil)
                telamodal.setup(nameBestHotel: "Hotel Parque das Flores")
                
                
                
            }
        }else if priceTotalHotelJardim < priceTotalHotelParque && priceTotalHotelJardim < priceTotalHotelMar{
            
            if let telamodal = UIStoryboard(name: "bestHotel", bundle: nil).instantiateInitialViewController() as? bestHotelViewController {
                
                
                present(telamodal, animated: true, completion: nil)
                telamodal.setup(nameBestHotel: "Hotel Jardim Botanico")
                
                
                
            }
        }else{
            if let telamodal = UIStoryboard(name: "bestHotel", bundle: nil).instantiateInitialViewController() as? bestHotelViewController {
                
                
                present(telamodal, animated: true, completion: nil)
                telamodal.setup(nameBestHotel: "Hotel Mar Atlântico")
        }
     
        
    }
    }
    
   
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    

}

