//
//  BrandController.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 18/11/20.
//


import  Alamofire
import UIKit

class BrandController{
    
    var arrayBrands = [Brand]()
    
    func request(onLoadData: @escaping () -> Void) {
        
        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas").responseJSON { (response) in
            if let arrayDicts = response.value as? [[String: Any]] {

                var arrayBrands = [Brand]()
                
                for item in arrayDicts {
                    arrayBrands.append(Brand(fromDictionary: item))
                }
                
                self.loadShows(arrayBrands: arrayBrands)
                onLoadData()
                
            }
        }
    }
    
    
    
    
    func loadShows(arrayBrands: [Brand]) {
        self.arrayBrands = arrayBrands
    }
    

}



