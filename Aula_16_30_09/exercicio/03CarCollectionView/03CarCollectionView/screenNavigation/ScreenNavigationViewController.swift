//
//  ScreenNavigationViewController.swift
//  03CarCollectionView
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class ScreenNavigationViewController: UIViewController {

    @IBOutlet weak var imageCar: UIImageView!
    private var car: Car!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCar.image = UIImage(named: car!.nameImage)
    }
    
    func setImage(car: Car) {
        self.car = car
        
    }
    


}
