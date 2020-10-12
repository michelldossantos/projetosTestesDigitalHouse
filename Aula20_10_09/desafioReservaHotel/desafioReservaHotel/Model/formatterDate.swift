//
//  formaterDate.swift
//  desafioReservaHotel
//
//  Created by Michel dos Santos on 10/10/20.
//

import UIKit

func formatterDate(type: String , dataPicker: UIDatePicker!) -> String?{
    let dateformatter = DateFormatter()
    dateformatter.dateStyle = DateFormatter.Style.short
    dateformatter.dateFormat = type
     return dateformatter.string(from: dataPicker.date)

}
