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
        guard let number = URL(string: "tel://" + "9988774455") else { return }
        UIApplication.shared.open(number)
        
    }
    
    @IBAction func email(_ sender: Any) {
        UIApplication.shared.open(URL(string: "mailto://email@com.br")!)
    }
    @IBAction func site(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://google.com")!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
