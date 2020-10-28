//
//  DetailCarViewController.swift
//  10_26_exerciseTabbar
//
//  Created by Michel dos Santos on 27/10/20.
//

import UIKit

class DetailCarViewController: UIViewController {
    
    @IBOutlet var imageCar: UIImageView!
    @IBOutlet var labelCarModel: UILabel!
    @IBOutlet var labelCarYear: UILabel!
    
    var car: Car?
//    func setup(car:Car){
//        imageCar.image = UIImage(named: car.nameImage)
//        labelCarModel.text = car.model
//        labelCarModel.text = car.year
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detalhes do Carro"
        imageCar.image = UIImage(named: car!.nameImage)
        labelCarModel.text = car?.model
        labelCarYear.text = car?.year
     
    }
   

}
