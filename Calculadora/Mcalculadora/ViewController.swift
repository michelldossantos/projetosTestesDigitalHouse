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
   //Criando os botões númericos
    
    
    @IBAction func btn0(_ sender: UIButton) {
        efeitoclick(sender: sender)
        let botaoClicado = sender.currentTitle
        valores(numero: botaoClicado!)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Criando Botões para operações
    
    @IBAction func btnSoma(_ sender: UIButton) {
        efeitoclick(sender: sender)
        operador = operador2(sender: sender)
       
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
    
    func efeitoclick (sender: UIControl ){
        
        sender.alpha = 0.5

               DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
                   sender.alpha = 1.0
               }
    }
    
    func operador2(sender: UIButton) -> String{ // retornar o operador conforme for recebido no titulo do botao
        if (valor1 != ""){
            switch sender.currentTitle {
            case "+":
                return "+"
            case "-":
                return "-"
            case "%":
                return "/"
            case "*":
            return "*"
            default:
                print("ERROR")
            }
        }
        return ""
    }


}

