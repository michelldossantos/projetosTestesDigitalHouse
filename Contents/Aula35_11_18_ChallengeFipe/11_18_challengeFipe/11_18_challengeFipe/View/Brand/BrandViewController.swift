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
        
//        let onLoadData = {
//            DispatchQueue.main.async {
//                self.tableViewBrand.reloadData()
//            }
//        }
//
//        controller.request(onLoadData: onLoadData)
        request()
        
    
    
    
    
    
}
    
    
    
    
    
//    func request(onLoadData: @escaping () -> Void) {
    func request() {
        
        
        AF.request("https://parallelum.com.br/fipe/api/v1/carros/marcas").responseJSON { (response) in
            if let arrayDicts = response.value as? [[String: Any]] {
                
                var arrayBrands = [Brand]()
                
                for item in arrayDicts {
                    arrayBrands.append(Brand(fromDictionary: item))
                }
                DispatchQueue.main.async {
                    self.loadShows(arrayBrands: arrayBrands)
//
                }
            }
        }
    }
    
    func loadShows(arrayBrands: [Brand]) {
    self.arrayBrands = arrayBrands
        tableViewBrand.reloadData()
}
}



extension BrandViewController: UITableViewDelegate{
    
    
}

extension BrandViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BrandTableViewCell", for: indexPath) as!  BrandTableViewCell
        
        cell.setup(brand: arrayBrands[indexPath.row])
        
        
        
        
        return cell
        
        
    }
    
    
}
