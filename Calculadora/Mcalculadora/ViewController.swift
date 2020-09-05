//
//  ViewController.swift
//  Mcalculadora
//
//  Created by Michel dos Santos on 31/08/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import UIKit

var valor1 : String = ""
var valor2: String = ""
var operador : String?
var resultado : String?


class ViewController: UIViewController {
   
    @IBOutlet weak var labelResultado: UITextField!
   //Criando os botões
    @IBAction func btn0(_ sender: Any) {
        valores(numero: "0")
    }
    
    @IBAction func btn1(_ sender: Any) {
        valores(numero: "1")
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        valores(numero: "2")
    }
    
    @IBAction func btn3(_ sender: Any) {
        valores(numero: "3")
    }
    
    
    @IBAction func btn4(_ sender: Any) {
        valores(numero: "4")
    }
    
    
    @IBAction func btn5(_ sender: Any) {
        valores(numero: "5")
    }
    
    
    @IBAction func btn6(_ sender: Any) {
        valores(numero: "6")
    }
    
    @IBAction func btn7(_ sender: Any) {
        valores(numero: "7")
    }
    
    
    @IBAction func btn8(_ sender: Any) {
        valores(numero: "8")
    }
    
    @IBAction func btn9(_ sender: Any) {
        valores(numero: "9")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Criando Botões para operações
    
    @IBAction func btnSoma(_ sender: Any) {
        if (valor1 != ""){ // Verifica se o valor1 já possui algum valor
             operador = "+"
        }
       
    }
    
    @IBAction func btnMenos(_ sender: Any) {
         if (valor1 != ""){
                    operador = "-"
               }
    }
    @IBAction func btnX(_ sender: Any) {
        if (valor1 != ""){
             operador = "*"
        }
    }
    
    @IBAction func btnDiv(_ sender: Any) {
        
        if (valor1 != ""){
             operador = "/"
        }
        
    }
    

    
    
    @IBAction func btnIgual(_ sender: Any) {
        if operador != nil && valor2 != "" && valor1 != "" {
            operacoes(operado: operador ?? "")
        }
        
        
    }
    
    
    func valores(numero: String)  { // atribui os dois valores
        if operador == nil { // caso ainda nao foi precionado nenhum operador
            valor1 = valor1 + numero
            labelResultado.text = valor1
        }else{

                valor2 = valor2 + numero
                labelResultado.text = valor2
        }
        
    }
    // Faz o calculo conforme o parametro recebido
    func operacoes(operado : String){
        
            if (operado == "+"){
                resultado = ("\(Int(valor1)! + Int(valor2)!)")
                
            }else if (operado == "-"){
                resultado = ("\(Int(valor1)! - Int(valor2)!)")
                
            }else if (operado == "*"){
                resultado = ("\(Int(valor1)! * Int(valor2)!)")
                
            }else if (operado == "/"){
                resultado = ("\(Int(valor1)! / Int(valor2)!)")
                
            }
            
            labelResultado.text = resultado // faz a impressão do resultado
        
            // Zera operador e valores para um novo cálculo
            operador = nil
            valor1 = ""
            valor2 = ""
        
 
    }
    
    


}

