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

        let product: Product?

        if indexPath.section == 0{
            product = arrayProductOpen[indexPath.row]
        }else{
            product = arrayProductCompleted [indexPath.row]
        }

        createAlertOption(product: product!)
        
        
        
        
    }
    
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filter()
        if section == 1 {
            return arrayProductCompleted.count
        }else{
            return arrayProductOpen.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        
        if indexPath.section == 1 {
            cell.setup(product: arrayProductCompleted[indexPath.row])
        }else{
            cell.setup(product:  arrayProductOpen[indexPath.row])
        }
        
        
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

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        filterSearchBar(search: searchText)
    }
    
}
