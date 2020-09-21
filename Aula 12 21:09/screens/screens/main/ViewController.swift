//
//  ViewController.swift
//  screens
//
//  Created by Michel dos Santos on 21/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionMyViewOne(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController{
            navigationController?.pushViewController(viewOne, animated: true)
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

