//
//  ViewController.swift
//  desafioOutletIBActionAvancado
//
//  Created by Michel dos Santos on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mLabel: UILabel?
    @IBOutlet var mButton: UIButton?
    @IBOutlet var mTextField: UITextField?
    @IBOutlet var mLabel2: UILabel?
    @IBOutlet var mImage: UIImageView?
    @IBOutlet var mSearchBar: UISearchBar?
    
    @IBAction func mButto(sender: UIButton){
        print("Clicado")
        mImage?.image = UIImage(named: "swift.png")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

