//
//  ViewController.swift
//  paginacaoG
//
//  Created by Michel dos Santos on 16/01/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewMedicamentos: UITableView!
    
    var arrayMedicamentos = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMedicamentos.delegate = self
        tableViewMedicamentos.dataSource = self
        
        
        
    }


}

extension ViewController: UITableViewDelegate{
    
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMedicamentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DrogstoreTableViewCell copy", for: indexPath) as? DrogstoreTableViewCell
        else{return UITableViewCell()}
        
        cell.setup(medicamento: arrayMedicamentos[indexPath.row])
        
        return cell
    }
    
    
    
}


