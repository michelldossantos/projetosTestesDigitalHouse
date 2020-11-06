//
//  ViewController.swift
//  10_30iBuy
//
//  Created by Michel dos Santos on 31/10/20.
//

import UIKit

enum status: Int {
    case open = 0
    case complete = 1
        
}

class ViewController: UIViewController {

    @IBOutlet weak var tableViewProducts: UITableView!
    
    @IBAction func actionCreateProduct(_ sender: UIButton) {
        alertCreateOrEditItem(product: nil)
        
    }
    
//    var arrayProductAll = [Product]()
    var arrayProductCompleted = [Product]()
    var arrayProductOpen = [Product]()
    var arrayProductsAll = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewProducts.delegate = self
        tableViewProducts.dataSource = self
        
        
        arrayProductsAll.append(Product(name: "Banana", checked: false))
        arrayProductsAll.append(Product(name: "Pera", checked: false))
        arrayProductsAll.append(Product(name: "Maça", checked: false))
        arrayProductsAll.append(Product(name: "Carne", checked: false))
        arrayProductsAll.append(Product(name: "Suco", checked: false))
        arrayProductsAll.append(Product(name: "Açucar", checked: false))
        arrayProductsAll.append(Product(name: "ovo", checked: true))
        arrayProductsAll.append(Product(name: "Feijão", checked: true))
        
    }


}



extension ViewController{
    
    func filter(){
        

        arrayProductCompleted =  arrayProductsAll.filter ({ (item) -> Bool in
    item.checked == true})
        arrayProductOpen =  arrayProductsAll.filter ({ (item) -> Bool in
    item.checked == false})
  
    }
    
    func createItem(product: Product){
        arrayProductsAll.append(product)
        tableViewProducts.reloadData()
    }
    
    func editProduct(product: Product, nameEdited: String) {
        let indexItem = self.arrayProductsAll.firstIndex { (object) -> Bool in
            object.name == product.name
            
            
           
    }
        arrayProductsAll[indexItem!].name = nameEdited
        tableViewProducts.reloadData()
        
    }
    
    // todo
    func deleteItem(product: Product) {
        let indexItem = self.arrayProductsAll.firstIndex { (object) -> Bool in
            object.name == product.name
            
            
            
           
    }
        arrayProductsAll.remove(at: indexItem!)
        tableViewProducts.reloadData()
        
    }
        
    
    func alertCreateOrEditItem(product: Product?){
        var title = "Criar"
        let message = "Digite o nome do item"
        
        if product != nil{
            title = "Editar"
        }
        
        
        let alertCreateProduct = UIAlertController(title: title,
                                                 message: message,
                                                 preferredStyle: .alert)
        
        alertCreateProduct.addTextField(configurationHandler: { textField in
            if product == nil{
            textField.placeholder = "Ex: Maça"
            }else{
                textField.text = product?.name
            }
            
            
        })
        
        alertCreateProduct.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
        }))
        
        alertCreateProduct.addAction(UIAlertAction(title: "Salvar", style: .default, handler: { [self] (action) in
            
            
            if product == nil{
                self.createItem(product: Product(name: alertCreateProduct.textFields![0].text!, checked: false))
            }else{
                self.editProduct(product: product!,nameEdited: alertCreateProduct.textFields![0].text! )
            }
            
            
        }))
        
        self.present(alertCreateProduct, animated: true, completion: nil)
        
    }
    
    func createAlertOption(product:Product) {
        let alertCreateProduct = UIAlertController(title: nil,
                                                 message: nil,
                                                 preferredStyle: .alert)
        alertCreateProduct.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
        }))
        
        alertCreateProduct.addAction(UIAlertAction(title: "Editar", style: .default, handler: {  (action) in
            self.alertCreateOrEditItem(product: product)
        }))
        
        alertCreateProduct.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: {  (action) in
        }))
        
        alertCreateProduct.addAction(UIAlertAction(title: "Marcar como concluído", style: .default, handler: {  (action) in
        }))
        
        
        
        
        self.present(alertCreateProduct, animated: true, completion: nil)
    }
}


