//
//  ViewController.swift
//  exercicio03collectionView
//
//  Created by Michel dos Santos on 02/10/20.
//
//03 - Criar um app:
//- Tenha uma collectionview com 10 carros na vertical;
//- Cada célula deve ter o nome e a imagem do carro; (pode repetir a mesma imagem)
//- Quando tocar numa celula, deve abrir uma tela via navigation (push), nessa tela deve haver a imagem grande.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carCollectionView: UICollectionView!
    var arrayCar = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        carCollectionView.delegate = self
        carCollectionView.dataSource = self
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(nome: "Uno", nameImage: "uno.jpeg"))
    }


}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let viewNavigation = UIStoryboard(name: "Navigation", bundle: nil).instantiateInitialViewController() as? NavigationViewController{
            navigationController?.pushViewController(viewNavigation, animated: true)
           
            
        }
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carCollectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
            cell.setup(car: arrayCar[indexPath.row])
            return cell
        }
        
    }
    
    

