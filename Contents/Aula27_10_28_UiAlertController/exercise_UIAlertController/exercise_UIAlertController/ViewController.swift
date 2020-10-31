//
//  ViewController.swift
//  exercise_UIAlertController
//
//  Created by Michel dos Santos on 28/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: VARIABLES
    var nameProduct: String?
    var quantity: String?
    var arrayProduct = [Product]()
    
    // MARK: Outlet
    @IBOutlet weak var productTableView: UITableView!
    
    // MARK: ACTION
    @IBAction func actionAddProduct(_ sender: Any) {
        
        openAlertEditOrCreate(product: nil)
    }
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productTableView.delegate = self
        productTableView.dataSource = self
        
        arrayProduct.append(Product(name: "Pipoca", quantity: "3", imageName: "pipoca.jpeg"))
        arrayProduct.append(Product(name: "Bala", quantity: "20", imageName: "bala.jpeg"))
        arrayProduct.append(Product(name: "Cerveja", quantity: "12", imageName: "cerveja.jpeg"))
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        openAlertConfig(product: arrayProduct[indexPath.row])
        
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        cell.setup(product: arrayProduct[indexPath.row])
        return cell
    }
}

extension ViewController{
    
    func openAlertConfig(product: Product){

        let alertEditOrDelete = UIAlertController(title: "Configurar", message: nil, preferredStyle: .actionSheet)
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in
            
            self.openAlertEditOrCreate(product: product)
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { (action) in
            
            let indexItem = self.arrayProduct.firstIndex { (object) -> Bool in
                return object.name == product.name
            }
            
            self.arrayProduct.remove(at: indexItem!)
            self.productTableView.reloadData()
            
        }))
        present(alertEditOrDelete, animated: true, completion: nil)
    }
  
    func openAlertEditOrCreate(product: Product?){
 
        var labelTextName = "Nome Produto"
        var labelTextQuantity = "Quantidade"
        
        // Index product in array
        let indexItem = self.arrayProduct.firstIndex { (object) -> Bool in
            return object.name == product?.name
        }
        
        if product != nil{
            
            labelTextName = self.arrayProduct[indexItem!].name
            labelTextQuantity = self.arrayProduct[indexItem!].quantity
        }
        
        // init  create alert
        let AlertEditProduct = UIAlertController(title: nil,
                                                 message: nil,
                                                 preferredStyle: .alert)
        
        // ADD textFields
        AlertEditProduct.addTextField(configurationHandler: { textField in
            
            textField.text = labelTextName
            textField.tag = 0
        })
        
        AlertEditProduct.addTextField(configurationHandler: { textField in            textField.text = labelTextQuantity
            textField.tag = 1
        })
 
        // Add Actions
        
        AlertEditProduct.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
        }))
        
        AlertEditProduct.addAction(UIAlertAction(title: "Salvar", style: .default, handler: { (action) in
            
            for textfield in AlertEditProduct.textFields!{
                
                if textfield.tag == 0{
                    self.nameProduct =  textfield.text!
                }else{
                    self.quantity = textfield.text!
                }
            }
            
            if product != nil {
                self.arrayProduct[indexItem!] = Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased())
            }else{
                
                self.arrayProduct.append(Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased()))
            }
            
            self.productTableView.reloadData()
        }))
        
        self.present(AlertEditProduct, animated: true, completion: nil)
    }
}


