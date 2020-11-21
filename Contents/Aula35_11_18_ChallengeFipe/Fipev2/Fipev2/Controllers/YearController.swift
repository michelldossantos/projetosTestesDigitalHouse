//
//  YearController.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit
import Alamofire

class YearController: ControllerProtocol{
    
    var selectedBrand: Brand
    var selectedModel: Model
    
    init(brand: Brand, model: Model) {
        selectedBrand = brand
        selectedModel = model
        
    }
    
    var arrayYear = [Year]()
    
    
    func getNumberOfRows() -> Int {
        return arrayYear.count
        
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController = CarDetailController(brand: selectedBrand, model: selectedModel, year: arrayYear[index])
        return ViewController.getView(controller: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayYear[index].nome
    }
    
    func getViewTitle() -> String {
        return "Anos - \(selectedModel.nome!)"
    }
    
    func loadData(onComplete: @escaping (Bool) -> Void) {

        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.codigo!)/modelos/\(selectedModel.codigo!)/anos").responseJSON { response in
            if let json = response.value as? [[String: Any]]  {
                        var year = [Year]()
                        for item in json {
                            year.append(Year(fromDictionary: item))
                        }
                        self.arrayYear = year
                        onComplete(true)
                        return
                    }
                    onComplete(false)
                }
        
        
    }
    
    
}

