//
//  Convert.swift
//  networkApi
//
//  Created by Michel dos Santos on 11/11/20.
//

import Foundation
import UIKit


class Covert : NSObject{

    var base : String!
    var date : String!
    var rates : [String:Double]!


    init(fromDictionary dictionary: [String:Any]){
        base = dictionary["base"] as? String
        date = dictionary["date"] as? String
        rates = dictionary["rates"] as? [String: Double]
        }
    }


   


