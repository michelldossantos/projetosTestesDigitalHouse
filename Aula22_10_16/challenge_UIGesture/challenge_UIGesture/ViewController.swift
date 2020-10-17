//
//  ViewController.swift
//  challenge_UIGesture
//
//  Created by Michel dos Santos on 16/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelNumber: UILabel!
    @IBOutlet var viewTapGesture: UIView!
    @IBOutlet var viewSwipGesture: UIView!
    @IBOutlet var viewLongPressGesture: UIView!
    
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        
        viewLongPressGesture.addGestureRecognizer(Swipe)
    }

    @objc func swipeGesture(){
        count -= 1
        labelNumber.text = String( count)
    }
}



