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
        
        let conta = Calculadora()
        // OBS: Se tiver apenas um parâmetro retorna apenas o valor do primeiro parâmetro
        //  Se tiver apenas um parâmetro mas já ter calculos antes , usa o resultado anterior como parâmetro
        // Se tiver os dois parâmetros faz o calculo normal
        conta.somar(valor1: 1, valor2: 1) // 1+1 = 2
        conta.dividir(valor1: 1, valor2: nil) // Usa o valor de cima, 2/1= 2
        conta.multiplicar(valor1: 5, valor2: 5) // 5*5=25
        conta.subtrair(valor1: 10, valor2: nil) // usa resultado de cima, 25 - 10 = 15
        print(conta.getResposta())
    }
    
    
    
    
    
    
    
}

