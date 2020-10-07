//
//  ViewController.swift
//  03CarCollectionView
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionViewCar: UICollectionView!
    var arrayCar = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCar.delegate = self
        collectionViewCar.dataSource = self
        arrayCar.append(Car(name: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(name: "Civic", nameImage: "civic.jpeg"))
        arrayCar.append(Car(name: "Corolla", nameImage: "corolla.jpg"))
        arrayCar.append(Car(name: "kwid", nameImage: "kwid.jpg"))
        arrayCar.append(Car(name: "Palio", nameImage: "palio.jpeg"))
        arrayCar.append(Car(name: "Sportage", nameImage: "sportage.jpg"))
        arrayCar.append(Car(name: "Uno", nameImage: "uno.jpeg"))
        arrayCar.append(Car(name: "Palio", nameImage: "palio.jpeg"))
        arrayCar.append(Car(name: "Civic", nameImage: "civic.jpeg"))
        arrayCar.append(Car(name: "Sportage", nameImage: "sportage.jpg"))
    }


}

extension ViewController: UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){

        if let telaNavigation = UIStoryboard(name: "Navigation", bundle: nil).instantiateInitialViewController() as? ScreenNavigationViewController{
            
//            present(telaNavigation, animated: true, completion: nil)
            
            
            navigationController?.pushViewController(telaNavigation, animated: true)
            telaNavigation.car = arrayCar[indexPath.row]
            
            
        
//
    }
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewCar.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        cell.setup(car: arrayCar[indexPath.row])
        
        return cell
    }
    
}

