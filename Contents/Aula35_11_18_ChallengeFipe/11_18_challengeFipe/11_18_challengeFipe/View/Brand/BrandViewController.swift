//
//  BrandViewController.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 18/11/20.
//

import UIKit
import Alamofire
class BrandViewController: UIViewController {
    
    @IBOutlet var tableViewBrand: UITableView!
    
    var controller = BrandController()
    var arrayBrands = [Brand]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewBrand.delegate = self
        tableViewBrand.dataSource = self
        
        let onLoadData = {
            DispatchQueue.main.async { [self] in
                self.arrayBrands = self.controller.arrayBrands
                self.tableViewBrand.reloadData()
            }
        }

        controller.request(onLoadData: onLoadData)
  
}
    

}




