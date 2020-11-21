//
//  BrandExtension.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 19/11/20.
//


import UIKit

extension BrandViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let carModel = UIStoryboard(name: "CarModel", bundle: nil).instantiateInitialViewController() as? CarModelViewController{
            
            carModel.brand = arrayBrands[indexPath.row]
            
            
//            navigationController?.pushViewController(carModel, animated: true)
            present(carModel, animated: true, completion: nil)

                }
    }
    
    
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
