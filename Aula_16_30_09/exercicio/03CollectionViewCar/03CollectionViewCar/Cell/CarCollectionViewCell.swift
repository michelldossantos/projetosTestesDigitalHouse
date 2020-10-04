//
//  CarCollectionViewCell.swift
//  03CollectionViewCar
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCar: UIImageView!
    
    @IBOutlet weak var labelCar: UILabel!
    
    func setup (car: Car){
        imageCar.image = UIImage(named: car.nameImage)
        labelCar.text = car.name
    }
    
}
