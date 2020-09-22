//
//  MyViewThreeViewController.swift
//  screens
//
//  Created by Michel dos Santos on 21/09/20.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    @IBAction func actionViewThreeModel(_ sender: Any) {
        if let viewModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController{
            present(viewModal, animated: true, completion: nil)
        }
    }
    @IBAction func actionViewThreeNavigation(_ sender: Any) {
        if let viewNavigation = UIStoryboard(name: "MyViewThreeNavigation", bundle: nil).instantiateInitialViewController() as? MyViewThreeNavigationViewController{
            navigationController?.pushViewController(viewNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Three"

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
