//
//  NavigationViewController.swift
//  exercicio03collectionView
//
//  Created by Michel dos Santos on 03/10/20.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var imageNavigation: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setImage(car: Car){
        imageNavigation.image = UIImage(named: car.nameImage)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
