//
//  ViewController.swift
//  exercise_UIAlertController
//
//  Created by Michel dos Santos on 28/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var nameProduct: String?
    var quantity: String?
    @IBOutlet weak var productTableView: UITableView!
    @IBAction func actionAddProduct(_ sender: Any) {
        
       
        
        let alert = UIAlertController(title: "Adicionar Produto",
                                             message: "Nome",
                                             preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in            textField.placeholder = "Nome Produto"
            textField.tag = 0
        })
        
        alert.addTextField(configurationHandler: { textField in            textField.placeholder = "Quantidade"
            textField.tag = 1
        })
       

        
               alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { (action) in

                
                for textfield in alert.textFields!{
                    
                    
                    if textfield.tag == 0{
                        self.nameProduct =  textfield.text!
                    }else{
                        self.quantity = textfield.text!
                    }
                }
                
                self.arrayProduct.append(Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased()))
                self.productTableView.reloadData()
                  
               }))

               alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
                   print("Cancelar")
               }))

               present(alert, animated: true, completion: nil)
        
    }
    
    var arrayProduct = [Product]()
    
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
        print("clicou")
        let alert2 = UIAlertController(title: "Adicionar Produto",
                                             message: "Nome",
                                             preferredStyle: .actionSheet)
        
        alert2.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in
            
            let alert3 = UIAlertController(title: nil,
                                                 message: nil,
                                                 preferredStyle: .alert)
            alert3.addTextField(configurationHandler: { textField in            textField.text = self.arrayProduct[indexPath.row].name
                textField.tag = 0
            })
            
            alert3.addTextField(configurationHandler: { textField in            textField.text = self.arrayProduct[indexPath.row].quantity
                textField.tag = 1
            })
            
            alert3.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
                
            }))
            
            alert3.addAction(UIAlertAction(title: "Salvar", style: .default, handler: { (action) in
                
                for textfield in alert3.textFields!{
                    
                    
                    if textfield.tag == 0{
                        self.nameProduct =  textfield.text!
                    }else{
                        self.quantity = textfield.text!
                    }
                }
                
                self.arrayProduct[indexPath.row] = Product(name: self.nameProduct!, quantity: self.quantity!, imageName: "\(self.nameProduct!).jpeg".lowercased())
                self.productTableView.reloadData()
                
                
            }))
            
            self.present(alert3, animated: true, completion: nil)
            
           
              
           
        }))
        
        alert2.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
            print("Cancelar")
            
           
        }))
        
        alert2.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { (action) in
            self.arrayProduct.remove(at: indexPath.row)
            self.productTableView.reloadData()
         
        }))
        present(alert2, animated: true, completion: nil)
        
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
