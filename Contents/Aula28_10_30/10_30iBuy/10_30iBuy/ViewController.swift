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
    
    var product = [Product]()
    
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
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            product.append(contentsOf: arrayProducts.filter { (x) -> Bool in
                
                return  x.checked == true
                
                })
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        
        
        cell.setup(product: product[indexPath.row])
        
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

