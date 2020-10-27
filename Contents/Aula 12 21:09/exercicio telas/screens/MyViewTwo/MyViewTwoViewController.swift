//
//  MyViewTwoViewController.swift
//  screens
//
//  Created by Michel dos Santos on 21/09/20.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Two"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonMyViewTwoModel(_ sender: Any) {
        if let myViewTwoModel = UIStoryboard(name: "MyViewTwoModel", bundle: nil).instantiateInitialViewController() as? MyViewTwoModelViewController {
                    present(myViewTwoModel, animated: true, completion: nil)
                }
    }
    
    @IBAction func buttonMyViewTwoPushed(_ sender: Any) {
        
        if let myViewTwoNavigation = UIStoryboard(name: "myViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? myViewTwoNavigationViewController {
            navigationController?.pushViewController(myViewTwoNavigation, animated: true)
                }
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
