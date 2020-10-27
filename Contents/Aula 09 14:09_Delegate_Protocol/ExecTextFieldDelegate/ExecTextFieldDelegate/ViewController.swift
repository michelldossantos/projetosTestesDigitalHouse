//
//  ViewController.swift
//  ExecTextFieldDelegate
//
//  Created by Michel dos Santos on 14/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import UIKit


class Usuario{
    var senha: String
    var email: String
    
    init(senha: String, email: String) {
        self.senha = senha
        self.email = email
    }
    
}


class ViewController: UIViewController {
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBOutlet weak var buttonRegistar: UIButton! // Precisa para trocar o fundo do botao
    var arrayUsuario =  [Usuario]()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    
    @IBAction func buttonRegistar(_ sender: UIButton) {
        if validatextfiled(){ // Verifica se os textField Foram prenchidos
            
            let usuario = Usuario(senha: textFieldSenha.text!, email: textFieldEmail.text!)
            
            if checkContemNaLista(usuario: usuario){
                print("Contem na lista")
                CorTela(cor: "Vermelho") //Se já tem pelo menos um cadastrado e o segundo for cadastrado com sucesso
            }else{
                if !arrayUsuario.isEmpty{
                    CorTela(cor: "Verde") //Se já tem pelo menos um cadastrado e o segundo for cadastrado com sucesso
                }
                arrayUsuario.append(usuario)
                clearTexfild()
                print("Adicionado")
//                buttonRegistar.backgroundColor = UIColor.green  //se for trocar o fundo
            }
       
            
        }

    }
    
    private func validatextfiled() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            
            // Comeca alerta
                       let alert = UIAlertController(title: "Atenção", message: "Falta o E-mail", preferredStyle: .alert)

                       let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
                       }
                       alert.addAction(okAction)
                       self.present(alert, animated: true) {
                          
                       }
                       // Termina alerta
            return false
        }
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            // Comeca alerta
                       let alert = UIAlertController(title: "Atenção", message: "Falta a Senha", preferredStyle: .alert)

                       let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
                       }
                       alert.addAction(okAction)
                       self.present(alert, animated: true) {
                          
                       }
                       // Termina alerta
        return false
    }
//        statusBotao()
        return true

    }
    
    
    
    private func statusBotao(){
        buttonRegistar.isEnabled = true

    }
    
    
    
    private func clearTexfild(){
        textFieldEmail.text = ""
        textFieldSenha.text = ""
    }
    
    
    
    private func checkContemNaLista(usuario: Usuario) -> Bool{
        
        for usuario in arrayUsuario{
            if textFieldEmail.text == usuario.email{
           
            return true
            }
            
        }
            
            return false
    }
    
    
    private func CorTela(cor: String){
        if cor == "Verde"{
            self.view.backgroundColor = UIColor.green
        }else{
            self.view.backgroundColor = UIColor.red
        }
    }

    
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldSenha.becomeFirstResponder()
        } else {
            if validatextfiled(){
                textField.resignFirstResponder()
            }
        }
        return true
    }
}



