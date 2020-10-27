//
//  ViewController.swift
//  screens
//
//  Created by Michel dos Santos on 21/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func actionMyViewOneModal(_ sender: Any) {
        if let viewOneModel = UIStoryboard(name: "MyViewOnelModel", bundle: nil).instantiateInitialViewController() as? MyViewOneModel{
            present(viewOneModel, animated: true, completion: nil)
            
        }
    }
    
    
    
    @IBAction func actionMyViewOneNavigation(_ sender: Any) {
        if let viewOnePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? myViewNavigation{
            navigationController?.pushViewController(viewOnePushed, animated: true)
            
        }
    }
    
    
    @IBAction func actionMyViewOne(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController{
            navigationController?.pushViewController(viewOne, animated: true)
            
            
        }
    }
    
    
    @IBAction func buttonMyViewTwo(_ sender: Any) {
        
        if let viewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController{
            navigationController?.pushViewController(viewTwo, animated: true)
        }
    }
    
    @IBAction func actionViewTwoModal(_ sender: Any) {
        if let myViewTwoModel = UIStoryboard(name: "MyViewTwoModel", bundle: nil).instantiateInitialViewController() as? MyViewTwoModelViewController {
                    present(myViewTwoModel, animated: true, completion: nil)
                }
    }
    
    @IBAction func actionViewTwoNavigation(_ sender: Any) {
        if let myViewTwoNavigation = UIStoryboard(name: "myViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? myViewTwoNavigationViewController {
            navigationController?.pushViewController(myViewTwoNavigation, animated: true)
                }
    }
    
    @IBAction func actionViewThree(_ sender: Any) {
        if let viewNavigation = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController{
            navigationController?.pushViewController(viewNavigation, animated: true)
        }
    }
    
    @IBAction func actionViewThreeModal(_ sender: Any) {
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
        // Do any additional setup after loading the view.
    }


}

