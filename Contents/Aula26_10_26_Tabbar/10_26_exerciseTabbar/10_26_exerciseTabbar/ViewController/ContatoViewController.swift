//
//  ContatoViewController.swift
//  10_26_exerciseTabbar
//
//  Created by Michel dos Santos on 26/10/20.
//

import UIKit

class ContatoViewController: UIViewController {
    @IBAction func contato(_ sender: Any) {
//        UIApplication.shared.openURL(NSURL(string: "telprompt://9809088798")! as URL)
//        if let url = URL(string: "tel://617-111-1111") { UIApplication.shared.open(url) }

        
        //        guard let number = URL(string: "tel://" + "9988774455") else { return }
//        UIApplication.shared.open(number)
        
//        if let url = NSURL(string: "tel://617-111-1111"), UIApplication.sharedApplication.canOpenURL(url as URL) {
//            UIApplication.sharedApplication.openURL(url)
//        }
        callNumber(phoneNumber: "617-111-1111")
        
    }
    
    @IBAction func email(_ sender: Any) {
        UIApplication.shared.open(URL(string: "mailto://email@com.br")!)
    }
    @IBAction func site(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://google.com")!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Entre em contato:"

       
    }
   
    private func callNumber(phoneNumber: String) {
        guard let url = URL(string: "telprompt://\(phoneNumber)"),
            UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

}
