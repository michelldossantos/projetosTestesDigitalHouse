//
//  ModelController.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 19/11/20.
//

import Foundation
import Alamofire
import UIKit
class ModelController{
    
    
    var arrayModel = [Modelo]()
    var brand: Brand?
    
    
    func request(onLoadData: @escaping () -> Void) {
        let id = String((brand?.codigo)!)
        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos").responseJSON { (response) in
            
            
            if let json = response.value as? [String: Any], let arrayDictionary = json["modelos"] as? [[String: Any]] {
                var arrayModels = [Modelo]()
                for dictionary in arrayDictionary {
                    let loadeData = Modelo(fromDictionary: dictionary)
                    arrayModels.append(loadeData)
                }
                self.loadShows(arrayModel: arrayModels)
                
                
            }
        }
        
        
        
    }
    
    func loadShows(arrayModel: [Modelo]) {
        self.arrayModel = arrayModel
    }
    
}
