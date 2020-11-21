//
//  CarModelViewController.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 19/11/20.
//

import UIKit
import Alamofire

class CarModelViewController: UIViewController {

    @IBOutlet var tableViewCarModel: UITableView!
    
   
    
    var controller = ModelController()
    var brand: Brand?
    
    var arrayModelos = [Modelo]()

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        controller.brand = brand
        let onLoadData = {
            DispatchQueue.main.async { [self] in
                print("entrou")
                self.arrayModelos = self.controller.arrayModel
                self.tableViewCarModel.reloadData()
            }
        }
        
        controller.request(onLoadData: onLoadData)
        
        tableViewCarModel.dataSource = self
        
        
        
        
        controller.request(onLoadData: onLoadData)
    }

}


