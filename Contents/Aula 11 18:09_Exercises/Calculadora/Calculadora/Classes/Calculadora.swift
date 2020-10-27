//
//  Calculadora.swift
//  Calculadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation
class Calculadora{
    private var resposta: Double = 0
    
    //MARK: Operações
    
    func somar(valor1: Double, valor2: Double?) -> Double{
        if let numero = valor2 {
            resposta =  valor1 + numero
            return resposta
        } else {
            resposta += valor1
            return resposta
        }
        
    }
    func subtrair(valor1: Double, valor2: Double?) -> Double{
        if let numero = valor2 {
            resposta =  valor1 - numero
            return resposta
        } else {
            if resposta>0{
                resposta = resposta - valor1
                return resposta
            }
            resposta = valor1
            return resposta
        }
    }
    
    func multiplicar(valor1: Double, valor2: Double?) -> Double{
        if let numero = valor2 {
            resposta =  valor1 * numero
            return resposta
        } else {
            if resposta>0{
                resposta = resposta * valor1
                return resposta
            }
            resposta = valor1
            return resposta
        }
    }
    
    func dividir(valor1: Double, valor2: Double?) -> Double{
        if let numero = valor2 {
            resposta =  valor1 / numero
            return resposta
        } else {
            if resposta>0{
                resposta = resposta / valor1
                return resposta
            }
            resposta = valor1
            return resposta
        }
    }
    
    //MARK: Get
    func getResposta() -> Double {
        return resposta
    }
    
}





