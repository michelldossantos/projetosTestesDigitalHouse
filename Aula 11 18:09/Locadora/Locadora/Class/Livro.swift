//
//  Livro.swift
//  Locadora
//
//  Created by Michel dos Santos on 19/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Livro: Produto{
    private var numeroPaginas: Int
    
    init(codigo: Int, nome: String, numeroPaginas: Int) {
        self.numeroPaginas = numeroPaginas
        super.init(codigo: codigo, nome: nome)
    }
    
}

extension Livro: fazerLocacao{
    func locar() -> String {
        return "O Livro \(nome) com \(codigo) páginas deve ser devolvido em 2 dias"
    }
 
}
