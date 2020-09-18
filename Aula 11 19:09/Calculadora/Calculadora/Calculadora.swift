//
//  Calculadora.swift
//  Calculadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation
class Calculadora {
    private var numeroUm: Int
    private var numero2: Int
    private var resultado: Int
    
    init() {
        self.numeroUm = 0
        self.numero2 = 0
        self.resultado = 0
    }
    
    func somar(numeroUm: Int , numeroDois: Int) -> Int{
        if numeroDois != 0 {
            resultado = numeroUm + numeroDois
        }else{
            resultado = numeroUm
        }
        return resultado
        
    }
    
    func subtrair(numeroUm: Int , numeroDois: Int) -> Int {
          if numeroDois != 0 {
               resultado = numeroUm - numeroDois
           }else{
               resultado = numeroUm
           }
           return resultado
       }
    
    func multiplicar(numeroUm: Int , numeroDois: Int) -> Double {
        if numeroDois != 0 {
            resultado = numeroUm * numeroDois
        }else{
            resultado = numeroUm
        }
        
        return Double(resultado)
    }
    
    func dividir(numeroUm: Int , numeroDois: Int) -> Double {
          if numeroDois != 0 {
               resultado = numeroUm / numeroDois
           }else{
               resultado = numeroUm
           }
          
           return Double(resultado)
       }
        
}
    
