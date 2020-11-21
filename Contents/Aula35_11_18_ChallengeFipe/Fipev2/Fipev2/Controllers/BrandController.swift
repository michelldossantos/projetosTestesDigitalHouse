//
//  BrandController.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit
import Alamofire

class BrandController: ControllerProtocol{
    
    var arrayBrands = [Brand]()
    
    
    func getNumberOfRows() -> Int {
        return arrayBrands.count
        
    }
    
    func getNextController(index: Int) -> UIViewController {
        let controller =  ModelController(brand: arrayBrands[index])
        
        return ViewController.getView(controller: controller)
        
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayBrands[index].nome
    }
    
    func getViewTitle() -> String {
        return "Marcas"
    }
    
    func loadData(onComplete: @escaping (Bool) -> Void) {

        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas").responseJSON { response in
                    if let json = response.value as? [[String: Any]] {
                        var brands = [Brand]()
                        for item in json {
                            brands.append(Brand(fromDictionary: item))
                        }
                        self.arrayBrands = brands
                        onComplete(true)
                        return
                    }
                    onComplete(false)
                }
        
        
    }
    
    
}
