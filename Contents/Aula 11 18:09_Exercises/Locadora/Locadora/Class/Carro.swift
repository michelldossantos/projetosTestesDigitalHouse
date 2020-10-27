//
//  Carro.swift
//  Locadora
//
//  Created by Michel dos Santos on 19/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation



class Carro: Produto{
    private var placa: String
    
    init(codigo: Int, nome: String, placa: String) {
        self.placa = placa
        super.init(codigo: codigo, nome: nome)
    }
    
}

extension Carro: fazerLocacao{
    func locar() -> String {
        return "O Carro \(nome) código: \(codigo) com a placa: \(placa) deve ser devolvido em 7 dias"
    }
 
}
