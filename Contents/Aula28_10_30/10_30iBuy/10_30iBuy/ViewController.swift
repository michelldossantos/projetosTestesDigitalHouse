//
//  ViewController.swift
//  10_30iBuy
//
//  Created by Michel dos Santos on 31/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewProducts: UITableView!
    
    @IBAction func actionCreateProduct(_ sender: UIButton) {
    }
    
    var arrayProduct = [Product]()
    var arrayProductCompleted = [Product]()
    var arrayProductOpen = [Product]()
    
    var arrayProducts = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewProducts.delegate = self
        tableViewProducts.dataSource = self
        
        
        arrayProducts.append(Product(name: "Banana", checked: false))
        arrayProducts.append(Product(name: "Pera", checked: false))
        arrayProducts.append(Product(name: "Maça", checked: false))
        arrayProducts.append(Product(name: "Carne", checked: false))
        arrayProducts.append(Product(name: "Suco", checked: false))
        arrayProducts.append(Product(name: "Açucar", checked: false))
        arrayProducts.append(Product(name: "ovo", checked: true))
        arrayProducts.append(Product(name: "Feijão", checked: true))
        
    }


}

extension ViewController : UITableViewDelegate{
    
    
    
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filter()
        if section == 0 {
            return arrayProductCompleted.count
        }else{
            return arrayProductOpen.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        
        if indexPath.section == 0 {
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

extension ViewController{
    
    func filter(){
        
//
        arrayProductCompleted =  arrayProducts.filter ({ (item) -> Bool in
    item.checked == true})
        arrayProductOpen =  arrayProducts.filter ({ (item) -> Bool in
    item.checked == false})
            

           
    
    }
}


