//
//  ViewController.swift
//  desafioCollectionView
//
//  Created by Michel dos Santos on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var carCollectionView: UICollectionView!
    
    var arrayCar = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carCollectionView.delegate = self
        carCollectionView.dataSource = self
        
        arrayCar.append(Car(imageName: "carro1.jpg"))
        arrayCar.append(Car(imageName: "carro2.jpg"))
        arrayCar.append(Car(imageName: "carro3.jpg"))
        arrayCar.append(Car(imageName: "carro4.jpg"))
        arrayCar.append(Car(imageName: "carro5.jpg"))
    }


}

extension ViewController: UICollectionViewDelegate{
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carCollectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as! CarCell
        cell.setup(car: arrayCar[indexPath.row])
        print(arrayCar[indexPath.row].imageName)
        return cell
    }
    
    
    
   
    
}



