//
//  ExtensionViewController.swift
//  10_30iBuy
//
//  Created by Michel dos Santos on 04/11/20.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let product:Product?
        let product: Product?
//
        if indexPath.section == 0{
            product = productViewModel.arrayProductOpen[indexPath.row]
//            product = arrayProductOpen[indexPath.row]
        }else{
            product = productViewModel.arrayProductCompleted[indexPath.row]
//            product = arrayProductCompleted [indexPath.row]
        }
//
//        alertCreateItem(product: product!)
        
        productViewModel.createAlertOption(product: product!)
//        createAlertOption(product: product!)
        
        
        
        
    }
    
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productViewModel.filter()
//        filter()
        if section == 1 {
            return productViewModel.arrayProductCompleted.count
//                arrayProductCompleted.count
        }else{
            return productViewModel.arrayProductOpen.count
              
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        
        if indexPath.section == 1 {
            cell.setup(product: productViewModel.arrayProductCompleted[indexPath.row])
//            cell.setup(product: arrayProductCompleted[indexPath.row])
            
        }else{
            cell.setup(product:  productViewModel.arrayProductOpen[indexPath.row])
//            cell.setup(product:  arrayProductOpen[indexPath.row])
          
        }
        
//
        return cell
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0{
             return "Abertos"
        }else{
          return  "Concluídos"
        }
    }
    
    
}
