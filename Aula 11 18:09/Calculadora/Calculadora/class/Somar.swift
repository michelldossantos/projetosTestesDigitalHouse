//
//  somar.swift
//  Calculadora
//
//  Created by Michel dos Santos on 19/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation
class Somar{
    func somar(valor1: Double, valor2: Double?) -> Double{
        if let numero = valor2 {
            resposta +=  valor1 + numero
            return resposta
        } else {
            resposta += valor1
            return resposta
        }
    }
}
