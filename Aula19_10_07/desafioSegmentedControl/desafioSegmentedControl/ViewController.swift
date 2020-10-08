//
//  ViewController.swift
//  desafioSegmentedControl
//
//  Created by Michel dos Santos on 07/10/20.
//

import UIKit

enum TypePerson{
    static let person = 0
    static let developer = 1
}

class ViewController: UIViewController {
    
    @IBOutlet var tableViewList: UITableView!
    @IBOutlet var segmentedControlPerson: UISegmentedControl!
    var arrayPerson = [Person]()
    @IBAction func changedSegmentedCrontrolPerson(_ Sender: Any){
        
        arrayPerson = [Person]()
        if segmentedControlPerson.selectedSegmentIndex == TypePerson.developer{
            arrayPerson.append(Developer(name: "Miche", nameImage: "dev.jpg"))
            arrayPerson.append(Developer(name: "Narlei", nameImage: "dev2.jpeg"))
        }else{
            arrayPerson.append(Person(name: "Laura", nameImage: "p1.jpg"))
            arrayPerson.append(Person(name: "Ana", nameImage: "p2.jpg"))
        }
        
        tableViewList.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen =  UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as? DetailViewController{
            if segmentedControlPerson.selectedSegmentIndex == TypePerson.person{
            present(screen, animated: true, completion: nil)
            }else{
                navigationController?.pushViewController(screen, animated: true)
            }
        }
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "personTableViewCell", for: indexPath) as! personTableViewCell
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }
    
    
}

