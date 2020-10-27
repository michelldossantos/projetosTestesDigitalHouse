//
//  Cd.swift
//  Locadora
//
//  Created by Michel dos Santos on 19/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Cd: Produto{
    private var autor: String
    
    init(codigo: Int, nome: String, autor: String) {
        self.autor = autor
        super.init(codigo: codigo, nome: nome)
    }
    
}

extension Cd: fazerLocacao{
    func locar() -> String {
        return "O CD \(nome) Autor: \(codigo) deve ser devolvido em 3 dias"
    }
 
}
