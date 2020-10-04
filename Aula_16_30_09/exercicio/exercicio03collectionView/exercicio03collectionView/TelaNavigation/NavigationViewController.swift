//
//  NavigationViewController.swift
//  exercicio03collectionView
//
//  Created by Michel dos Santos on 03/10/20.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var imageNavigation: UIImageView!
    private var car: Car!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageNavigation.image = UIImage(named: car!.nameImage )

    }
    
    func setImage(car: Car) {
        self.car = car
        
    }
    


}
