//
//  ViewController.swift
//  desafioLogin02
//
//  Created by Michel dos Santos on 15/09/20.
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
    var arrayUsuario =  [Usuario]()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
    
    
    @IBAction func buttonLogin(_ sender: Any) {
        let usuario = Usuario(senha: textFieldSenha.text! , email: textFieldEmail.text!)
        
        
        // verifica se os texfild estao completos e checa se usuario e senha digitados
        //batem com o que está salvo no array
        if validatextfiled() && checkLoginSenha(usuario:usuario){ 
            alerta(mensagem: "Usuário \(usuario.email) \n logou com sucesso!")
            clearTexfild()
        }
        else{
            alerta(mensagem: "Usuário ou senha inválido!!!")
        }
        
    }
    
    @IBAction func buttonRegistar(_ sender: UIButton) {
        if validatextfiled(){ // Verifica se os textField Foram prenchidos
            
            //let usuario recebe Usuario, onde é passado o que contem nas TexFild para login e senha
            let usuario = Usuario(senha: textFieldSenha.text!, email: textFieldEmail.text!)
            
            if checkContemNaLista(usuario: usuario){ // envia usuario e recebe True se contem ou false
                alerta(mensagem: "\(usuario.email) já esta cadastrado")
                
            }else{ // se não conter, cadastra usuário
                alerta(mensagem: "Usuário \(usuario.email) \n cadastrado com sucesso!")
                arrayUsuario.append(usuario)// adiciona o usuário no array
                clearTexfild()
                
//
            }
       
            
        }

    }
    
    private func validatextfiled() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            
            alerta(mensagem: "Falta E-mail")
            return false
        }
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            alerta(mensagem: "Falta a senha")
        return false
    }

        return true

    }

    private func clearTexfild(){
        textFieldEmail.text = ""
        textFieldSenha.text = ""
    }
    
    
    
    private func checkContemNaLista(usuario: Usuario) -> Bool{ // verifica se o login já está cadastrado
        
        for usuario in arrayUsuario{
            if textFieldEmail.text == usuario.email{
           
            return true // se já estiver retorna true, impedindo que cadastre um novo
            }
            
        }
            
            return false
    }
    
    private func checkLoginSenha(usuario: Usuario) -> Bool{ // true login sucesso
        for usuario in arrayUsuario{ // for em todos os usuarios contido no array
            
            // se os dados dos texfild for igual aos que estão salvos no array
            if textFieldEmail.text == usuario.email && textFieldSenha.text == usuario.senha{
           
            return true // retorna true para confirmar sucesso no login
            }
            
        }
            
            return false
        
    }
    
    private func alerta(mensagem: String){ // mensagem de alerta, recebe uma string que sera o corpo do alerta
        
        let alert = UIAlertController(title: "Atenção", message: mensagem , preferredStyle: .alert)

                              let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
                              }
                              alert.addAction(okAction)
                              self.present(alert, animated: true) {
                                 
                              }
    }
    

    
}

// trata as delegações
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // clicar no teclado em return
        if textField == textFieldEmail { // se o texfild que esta ativo ele manda pro próximo ao cliclar return
            textFieldSenha.becomeFirstResponder()
        } else {
            if validatextfiled(){ // se não
                textField.resignFirstResponder() // ele fecha o teclado ao clicar em return
            }
        }
        return true // retorna true apenas para não quebrar a função
    }
}


