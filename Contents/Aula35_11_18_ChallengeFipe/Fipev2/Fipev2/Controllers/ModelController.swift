//
//  ModelController.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit
import Alamofire

class ModelController: ControllerProtocol{
    
    var selectedBrand: Brand
    
    init(brand: Brand) {
        selectedBrand = brand
    
    }
    
    var arrayModel = [Model]()
    
    
    func getNumberOfRows() -> Int {
        return arrayModel.count
        
    }
    
    func getNextController(index: Int) -> UIViewController {
        let nextController = YearController(brand: selectedBrand, model: arrayModel[index])
        return ViewController.getView(controller: nextController)
    }
    
    func getTitleForCell(at index: Int) -> String {
        return arrayModel[index].nome
    }
    
    func getViewTitle() -> String {
        return "Modelos"
    }
    
    func loadData(onComplete: @escaping (Bool) -> Void) {

        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas/\(selectedBrand.codigo!)/modelos").responseJSON { response in
            if let json = response.value as? [String: Any], let jsonModels = json["modelos"] as? [[String:Any]] {
                        var model = [Model]()
                        for item in jsonModels {
                            model.append(Model(fromDictionary: item))
                        }
                        self.arrayModel = model
                        onComplete(true)
                        return
                    }
                    onComplete(false)
                }
        
        
    }
    
    
}
