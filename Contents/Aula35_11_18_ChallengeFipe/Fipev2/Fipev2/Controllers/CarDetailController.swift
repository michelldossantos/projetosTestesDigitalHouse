//
//  CarDetailController.swift
//  Fipev2
//
//  Created by Michel dos Santos on 21/11/20.
//

import UIKit
import Alamofire

class CarDetailController: ControllerProtocol{
    
    var selectedBrand: Brand
    var selectedModel: Model
    var selectedYear: Year
    
    init(brand: Brand, model: Model, year: Year) {
        selectedBrand = brand
        selectedModel = model
        selectedYear = year
        
        
    }
    
    var arrayText = [String]()
    
    var car: CarDetail?
    
    
    func getNumberOfRows() -> Int {
        return arrayText.count
        
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController = ModelController(brand: selectedBrand)
        return ViewController.getView(controller: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayText[index]
    }
    
    func getViewTitle() -> String {
        return "Detalhes  - \(selectedYear.nome!)"
    }
    
    func loadData(onComplete: @escaping (Bool) -> Void) {
        
        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.codigo!)/modelos/\(selectedModel.codigo!)/anos/\(selectedYear.codigo!)").responseJSON { response in
            if let json = response.value as? [String: Any]  {
                let car = CarDetail(fromDictionary: json)
                var text = [String]()
                text.append(car.marca)
                text.append(car.modelo)
                text.append(car.valor)
                self.car = car
                self.arrayText = text
                onComplete(true)
                return
            }
            onComplete(false)
        }
        
        
    }
    
    
}


