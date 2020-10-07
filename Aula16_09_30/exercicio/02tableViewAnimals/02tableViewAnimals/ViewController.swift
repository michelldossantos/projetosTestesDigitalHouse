//
//  ViewController.swift
//  02tableViewAnimals
//
//  Created by Michel dos Santos on 04/10/20.
//

//02 - Criar um app:
//- Tenha uma lista (tableView) com 10 animais.
//- Cada célula (linha) deve ter o nome, raça, peso e espécie de um animal.
//- Quando tocar numa celula, deve abrir uma tela em modal, nessa tela deve haver um botão de fechar e um label com o nome do animal.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewListAnimals: UITableView!
    var arrayAnimals = [Animals]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewListAnimals.delegate = self
        tableViewListAnimals.dataSource = self
        
        
        
        
        arrayAnimals.append(Animals(name: "Pipoca", breed: "Guiapeca", weight: 2.5, type: "Dog"))
        arrayAnimals.append(Animals(name: "Tomate", breed: "Guiapeca", weight: 5.0, type: "Dog"))
        arrayAnimals.append(Animals(name: "Bacon", breed: "Guiapeca", weight: 2.1, type: "Dog"))
        arrayAnimals.append(Animals(name: "Pneu", breed: "Guiapeca", weight: 3.4, type: "Dog"))
        arrayAnimals.append(Animals(name: "Zé", breed: "Guiapeca", weight: 4.6, type: "Dog"))
        arrayAnimals.append(Animals(name: "Paçoca", breed: "Guiapeca", weight: 6.4, type: "Dog"))
        arrayAnimals.append(Animals(name: "Caramelo", breed: "Guiapeca", weight: 4.8, type: "Dog"))
        arrayAnimals.append(Animals(name: "Branquinho", breed: "Guiapeca", weight: 3, type: "Cat"))
        arrayAnimals.append(Animals(name: "Tonica", breed: "Guiapeca", weight: 0.2, type: "Hamster"))
        arrayAnimals.append(Animals(name: "Pipoca", breed: "Guiapeca", weight: 2.5, type: "Cat"))
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let telamodal = UIStoryboard(name: "nameAnimal", bundle: nil).instantiateInitialViewController() as? modalViewController {
            present(telamodal, animated: true, completion: nil)
            telamodal.setup(animal: arrayAnimals[indexPath.row])
        }
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsTableViewCell", for: indexPath) as! AnimalsTableViewCell
        cell.setup(animal: arrayAnimals[indexPath.row])
        return cell
    }
    
    
}


