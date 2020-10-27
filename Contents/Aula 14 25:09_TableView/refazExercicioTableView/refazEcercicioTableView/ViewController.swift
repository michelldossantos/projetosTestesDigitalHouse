//
//  ViewController.swift
//  refazEcercicioTableView
//
//  Created by Michel dos Santos on 25/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    
    var listCars = ["Fiat", "BMW", "Toyota"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        listCars.append("GM")
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selecionou: \(listCars[indexPath.row])")
        
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.imageView?.image = #imageLiteral(resourceName: "download.jpeg")
        cell.textLabel?.text = listCars[indexPath.row]
        return cell
    }
    
    
    
}
