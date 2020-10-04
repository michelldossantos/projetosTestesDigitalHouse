//
//  ViewController.swift
//  04collectionViewNome
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collecionViewName: UICollectionView!
    var arrayName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collecionViewName.delegate = self
        collecionViewName.dataSource = self
        
        arrayName.append("João")
        arrayName.append("Paulo")
        arrayName.append("Ana")
        arrayName.append("Duda")
        arrayName.append("Dani")
        arrayName.append("Otavio")
        arrayName.append("Carlos")
        arrayName.append("Livia")
        arrayName.append("Maria")
        arrayName.append("Loru")
        arrayName.append("Caio")
        arrayName.append("Mighel")
        arrayName.append("Michel")
        arrayName.append("Julia")
        arrayName.append("Evandro")
        arrayName.append("Carlos")
        arrayName.append("Adri")
        arrayName.append("Deisi")
        arrayName.append("Victor")
        arrayName.append("Anderson")
        
        
    }


}

extension ViewController: UICollectionViewDelegate{
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NameCollectionViewCell", for: indexPath) as! NameCollectionViewCell
        cell.setup(nome: arrayName[indexPath.row])
        return cell
    }
    
   
    
}
