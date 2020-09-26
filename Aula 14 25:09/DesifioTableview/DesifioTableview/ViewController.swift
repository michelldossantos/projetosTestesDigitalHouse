//
//  ViewController.swift
//  DesifioTableview
//
//  Created by Michel dos Santos on 25/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewList: UITableView!
    
    let arrayCars = ["Fiat", "Honda", "Audi", "Renaut", "BMW"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController :UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       var car = arrayCars[indexPath.row]
        
        if let marcaDetailView = UIStoryboard(name: "Marca", bundle: nil).instantiateInitialViewController() as? MarcaViewController{
            present(marcaDetailView, animated: true, completion: nil)
        }
    
    }
}


extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text = arrayCars[indexPath.row]
        cell.imageView?.image = #imageLiteral(resourceName: "car.jpeg")
    return cell
        
    }
    
    
}

