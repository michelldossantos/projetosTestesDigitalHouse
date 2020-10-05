//
//  ViewController.swift
//  04collectionViewNome
//
//  Created by Michel dos Santos on 04/10/20.
//04 - Criar um app:
//  - Tenha uma collectionview com 20 nomes na horizontal; - OK!
//  - Cada célula deve ter um nome numa label, e o background da celula ser cinza fraco; - OK!
//  - Ao tocar na celula, reve remover ela da collectionview, do array e recarregar.

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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayName.remove(at: indexPath.row)
        collectionView.reloadData()
    }
    
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
