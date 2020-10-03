//
//  CarCell.swift
//  desafioCollectionView
//
//  Created by Michel dos Santos on 30/09/20.
//

import UIKit

class CarCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCar: UIImageView!
    
    func setup(car: Car){
        imageCar.image = UIImage(named: car.imageName)
    }
}
