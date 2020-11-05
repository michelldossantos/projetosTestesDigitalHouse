//
//  ViewController.swift
//  testcocoapod
//
//  Created by Michel dos Santos on 04/11/20.
//

import UIKit
import Kingfisher


class ViewController: UIViewController {
    @IBOutlet weak var imageTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageTest.kf.setImage(with: url)
    }


}

