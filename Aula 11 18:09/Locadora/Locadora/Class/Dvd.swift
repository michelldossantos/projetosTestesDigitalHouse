//
//  Dvd.swift
//  Locadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Dvd: Produto{
    private var formato: String = "Video"
    
    override init(codigo: Int, nome: String) {
        super.init(codigo: codigo, nome: nome)
    }
    
}

extension Dvd: fazerLocacao{
    func locar() -> String {
        return "O filme \(nome) com o código: \(codigo) deve ser devolvido em 5 dias"
    }
 
}



