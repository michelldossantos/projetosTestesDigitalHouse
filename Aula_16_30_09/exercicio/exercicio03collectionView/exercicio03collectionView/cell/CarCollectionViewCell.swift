//
//  CarCollectionViewCell.swift
//  exercicio03collectionView
//
//  Created by Michel dos Santos on 02/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageCar: UIImageView!
    
    @IBOutlet weak var nameCar: UILabel!
    
    
    func setup (car: Car){
        imageCar.image = UIImage(named: car.nameImage)
        nameCar.text = car.name
    }
}
