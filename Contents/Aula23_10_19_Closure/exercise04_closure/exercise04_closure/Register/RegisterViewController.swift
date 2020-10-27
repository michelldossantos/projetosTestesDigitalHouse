//
//  RegisterViewController.swift
//  exercise04_closure
//
//  Created by Michel dos Santos on 19/10/20.
//

import UIKit

class RegisterViewController: UIViewController {
//    onSave is a closure (anonymous function) that takes a UserRegister object as a parameter
    var onSave: ((_ user: UserRegister) -> Void)?

    
    
    @IBOutlet var textfieldEmail: UITextField!
    @IBOutlet var textfieldPassword: UITextField!
    
    @IBAction func actionRegister   (_sender: UIButton ){
        let newUser = UserRegister(nome: textfieldEmail.text!, password: textfieldPassword.text!)
        onSave!(newUser)
        print("teste")
        dismiss(animated: true, completion: nil)
       
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func setOnSalve (onSalve: @escaping (_ user: UserRegister) -> Void){
        self.onSave = onSalve
    }
    


}
