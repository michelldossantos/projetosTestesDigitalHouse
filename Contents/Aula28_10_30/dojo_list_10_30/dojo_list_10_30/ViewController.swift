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

//MARK: Delegate

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        openActionSheet(item: arryItems[indexPath.row])
        
        
       
        

        
    }
    
    
    
    
}



extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryItems.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
        
        cell.setup(item: arryItems[indexPath.row])
        
        
        
        return cell
        
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Aberto"
        }else{
            return "Completo"
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
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
    
}
