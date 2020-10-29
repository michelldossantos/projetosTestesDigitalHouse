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
        
        
        // MARK: CREATE ALERT ADD PRODUCT
        let alertAddProduct = UIAlertController(title: "Adicionar Produto",
                                                message: "Nome",
                                                preferredStyle: .alert)
        
        //  Add to alert a textfield for the name
        alertAddProduct.addTextField(configurationHandler: { textField in            textField.placeholder = "Nome Produto"
            textField.tag = 0
        })
        
        //  Add to alert a textfield for the name
        alertAddProduct.addTextField(configurationHandler: { textField in            textField.placeholder = "Quantidade"
            textField.tag = 1
        })
        
        
        //  Add to alert a action(button confirm)
        alertAddProduct.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { (action) in
            
            
            // Checks the corresponding text fild by tag
            
            for textfield in alertAddProduct.textFields!{
                
                
                if textfield.tag == 0{ // case tag 0 is NameProduct
                    self.nameProduct =  textfield.text! // add value corresponding to variable
                }else{ // is quantity
                    self.quantity = textfield.text!
                }
            }
            
            // add the object to the array
            self.arrayProduct.append(Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased()))
            
            
            self.productTableView.reloadData() // reload the tableview
            
        }))
        
        
        //  Add to alert a action(button Cancel)
        alertAddProduct.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
            print("Cancelar")
        }))
        
        present(alertAddProduct, animated: true, completion: nil) // open the alert
        
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
        
        //MARK: Alert Edit/Delete
        let alertEditOrDelete = UIAlertController(title: "Configurar",
                                       message: nil,
                                       preferredStyle: .actionSheet)
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in
            
            //MARK: Alert Edited
            let AlertEditProduct = UIAlertController(title: nil,
                                           message: nil,
                                           preferredStyle: .alert)
            
            
            AlertEditProduct.addTextField(configurationHandler: { textField in            textField.text = self.arrayProduct[indexPath.row].name
                textField.tag = 0
            })
            
            AlertEditProduct.addTextField(configurationHandler: { textField in            textField.text = self.arrayProduct[indexPath.row].quantity
                textField.tag = 1
            })
            
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
                
                self.arrayProduct[indexPath.row] = Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased())
                self.productTableView.reloadData()
                
                
            }))
            
            self.present(AlertEditProduct, animated: true, completion: nil)
            
            
            
            
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
            print("Cancelar")
            
            
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { (action) in
            self.arrayProduct.remove(at: indexPath.row)
            self.productTableView.reloadData()
            
        }))
        present(alertEditOrDelete, animated: true, completion: nil)
        
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
