//
//  ViewController.swift
//  Calculadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let conta = Calculadora()
        var resultadoSoma = conta.somar(numeroUm: 5, numeroDois: 3)
        var resultadoDiminuir = conta.subtrair(numeroUm: 5, numeroDois: 3)
        var resultadoDividir = conta.dividir(numeroUm: 100, numeroDois: 5)
        var resultadoMultiplicar = conta.multiplicar(numeroUm: 5, numeroDois: 3)
        print(resultadoSoma)
        print(resultadoDiminuir)
        
        print(resultadoDividir)
        print(resultadoMultiplicar)
        
    }
    
    

    
    


}

