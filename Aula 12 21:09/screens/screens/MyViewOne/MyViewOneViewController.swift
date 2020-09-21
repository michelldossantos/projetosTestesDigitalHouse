//
//  MyViewOneViewController.swift
//  screens
//
//  Created by Michel dos Santos on 21/09/20.
//

import UIKit

class MyViewOneViewController: UIViewController {
    @IBAction func ActionMyViewOneModel(_ sender: Any) {
        if let viewOneModel = UIStoryboard(name: "MyViewOnelModel", bundle: nil).instantiateInitialViewController() as? MyViewOneModel{
            present(viewOneModel, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func actionMyViewOnePushed(_ sender: Any) {
        
        if let viewOnePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? MyViewOnePushed{
            navigationController?.pushViewController(viewOnePushed, animated: true)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "One"

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
