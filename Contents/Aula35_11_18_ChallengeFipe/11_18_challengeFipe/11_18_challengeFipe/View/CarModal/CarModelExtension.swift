//
//  CarModelExtension.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit


extension CarModelViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayModelos.count  }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarModelTableViewCell", for: indexPath) as!  CarModelTableViewCell
        
        cell.setup(modelo: arrayModelos[indexPath.row])
        
        
   
        return cell
        
        
    }
    
    
}
