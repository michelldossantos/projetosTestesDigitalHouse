//
//  ViewController.swift
//  paginas
//
//  Created by Michel dos Santos on 13/01/21.
//

import UIKit
import UIScrollView_InfiniteScroll

class ViewController: UIViewController {
    @IBOutlet weak var tableViewMedicamentos: UITableView!
    
    var arrayMedicamentos = [Item]()
    var apiService = ApiService ()
    
    var page = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMedicamentos.delegate = self
        tableViewMedicamentos.dataSource = self
        
        tableViewMedicamentos.addInfiniteScroll { (tableView) -> Void in
            
            self.apiService.requestMedicamentos(page: self.page) { array  in
                self.page += 1
                self.arrayMedicamentos.append(contentsOf: array)
                self.tableViewMedicamentos.reloadData()
            }
            
            self.tableViewMedicamentos.finishInfiniteScroll()

        }
    }
    //0GQnmw1XFglgEE
    
    
    
    
    
    
}

extension ViewController: UITableViewDelegate{
    
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayMedicamentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "medicamentosTableViewCell", for: indexPath) as? medicamentosTableViewCell
        
        
        else{ return UITableViewCell() }
        cell.setup(medicamento: arrayMedicamentos[indexPath.row])
        
        return cell
        
    }
    
    
    
}

