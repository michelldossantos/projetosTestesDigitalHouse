//
//  CarCollectionViewCell.swift
//  desafioCollectionView
//
//  Created by Michel dos Santos on 30/09/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var imageViewCar: UIImageView!
    
    func setup(car: Car)  {
        imageViewCar.image = UIImage(named: car.imageName)
        
    }
}
