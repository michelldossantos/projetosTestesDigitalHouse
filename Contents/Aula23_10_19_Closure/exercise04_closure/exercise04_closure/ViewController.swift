//
//  ViewController.swift
//  exercise04_closure
//
//  Created by Michel dos Santos on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFieldLogin: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    
   
    @IBAction func actionButtonRegister(_ sender: UIButton) {
        
        if let viewRegister = UIStoryboard(name: "Register", bundle: nil).instantiateInitialViewController() as? RegisterViewController{
            present(viewRegister, animated: true, completion: nil)
            
//            viewRegister.setOnSalve{(user) in
//                self.textFieldLogin.text = user.nome
//                self.textFieldPassword.text = user.password
//
//            }
            viewRegister.setOnSalve {
                (user: UserRegister) in
                self.textFieldLogin.text = user.nome
                self.textFieldPassword.text = user.password
                
            }
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

