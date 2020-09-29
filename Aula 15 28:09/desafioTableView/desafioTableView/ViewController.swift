//
//  ViewController.swift
//  desafioTableView
//
//  Created by Michel dos Santos on 28/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayDevelopers = [Developer]()
    @IBOutlet weak var tableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        arrayDevelopers.append(Developer(nome: "Michel", profileImage: "michel.jpeg", email: "michelsantos15@gmail.com"))
        
        arrayDevelopers.append(Developer(nome: "Daniele", profileImage: "dani.jpg", email: "danistein@gmail.com"))
        
        arrayDevelopers.append(Developer(nome: "Narlei", profileImage: "narlei.jpeg", email: "gilva@gmail.com"))
        
        arrayDevelopers.append(Developer(nome: "Jorge", profileImage: "jorge.jpeg", email: "jorge@gmail.com"))
        
        arrayDevelopers.append(Developer(nome: "Marcela", profileImage: "marcela.jpeg", email: "marcela@gmail.com"))
    }
    
    

}

extension ViewController: UITableViewDelegate{
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeveloperCell", for: indexPath) as! DeveloperCell
        
        cell.setup(developer: arrayDevelopers[indexPath.row])
        
        
        return cell
    }
    
    
    // libera edição
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayDevelopers.remove(at: indexPath.row)
        // precisa dar reload
        tableViewList.reloadData()
    }
    
    
}
