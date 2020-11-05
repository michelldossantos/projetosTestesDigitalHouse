//
//  ViewController.swift
//  dojo_list_10_30
//
//  Created by Michel dos Santos on 30/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBarItems: UISearchBar!
  @IBOutlet weak var tableViewItems: UITableView!
    
    @IBAction func actionAddItem(_ sender: Any) {
        let alert =  createAlert()
        present(alert, animated: true, completion: nil)
    }
    var arryItems = [Item]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewItems.delegate = self
        tableViewItems.dataSource = self
        
        arryItems.append(Item(name: "Maça", checked: false))
        arryItems.append(Item(name: "Banana", checked: false))
        arryItems.append(Item(name: "Manga", checked:  false))
        
    }
    
    


}





extension ViewController{
    
    //MARK: OpenActionSheet
    func openActionSheet (item:Item) {
        let alertEditOrDelete = UIAlertController(title: "Seleciona a opção desejada",
                                                  message: nil,
                                                  preferredStyle: .actionSheet)
        
        
        var stringComplete = "Marcar como concluido"
        
        if item.checked{
            stringComplete = "Marcar como Aberto"
        }
//
        
            alertEditOrDelete.addAction(UIAlertAction(title: stringComplete, style: .default, handler: { (action) in
                item.checked = !item.checked
                
            }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in

            
        }))
        
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { (action) in
            
            self.openAlertDelete(item: item)
            

            
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
//
            
        }))
       
        present(alertEditOrDelete, animated: true, completion: nil)

    }
    
    //MARK: OpenALertDelete
    
    func openAlertDelete(item: Item){
        
        let alertEditOrDelete = UIAlertController(title: "Atenção",
                                                  message: "Tem certeza que deseja apagar este item?",
                                                  preferredStyle: .alert)
        
       
        
        
        alertEditOrDelete.addAction(UIAlertAction(title: "SIM", style: .default, handler: { (action) in
            self.deleteItem(item: item)

            
        }))
        
        alertEditOrDelete.addAction(UIAlertAction(title: "Não", style: .default, handler: { (action) in

            
        }))
      
        
        present(alertEditOrDelete, animated: true, completion: nil)
        
    }
    
    //MARK DeleteItem
    
    
    //MARK: FUNC GAMBI
    
    func deleteItem(item: Item){
//        let indexItem =  arryItems.firstIndex{$0 == value}
        

//                    self.arryItems.remove(at: indexPath.row)
//                    self.productTableView.reloadData()
        
//        var inder = arryItems.index(of: item.name)
        let indexItem = arryItems.firstIndex { (object) -> Bool in
            return object.name == item.name
        }
        
        
        arryItems.remove(at: indexItem!)
        tableViewItems.reloadData()
        
        

    }
    
    func getIndex(index: IndexPath?) {
        
       
//        return index
    }
    
   private func alertCreateItem() -> UIAlertController{
       
        
        let alertCreateProduct = UIAlertController(title: "Criar",
                                                 message: "Digite o nome do item",
                                                 preferredStyle: .alert)
        
        alertCreateProduct.addTextField(configurationHandler: { textField in
            textField.placeholder = "Ex: Maça"
            
            
        })
        
        alertCreateProduct.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
        }))
        
        alertCreateProduct.addAction(UIAlertAction(title: "Salvar", style: .default, handler: { (action) in
            
            
        }))
        
        return alertCreateProduct
    
}
    
    
    func saveItem(name: String){
        self.arryItems.append(Item(name: name, checked: true))
        tableViewItems.reloadData()
    }
    
    private func createAlert() -> UIAlertController {
            let alert = UIAlertController(title: "Insira", message: "Insira o novo item", preferredStyle: .alert)

            //Inserindo TextField
            alert.addTextField(configurationHandler: { textFild in textFild.placeholder = "Novo Item"})

            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

            //Recebendo dados da TextField
            let addButton = UIAlertAction(title: "Ok", style: .default) { (action) in
                if let textField = alert.textFields?.first, let text = textField.text {
                    self.saveItem(name:text)
                    
                }
            }
            alert.addAction(cancelButton)
            alert.addAction(addButton)
            
            return alert
        }
}


