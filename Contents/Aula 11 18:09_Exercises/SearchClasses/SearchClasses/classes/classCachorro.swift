//
//  classCachorro.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Cachorro {
    var nome: String
    var raca: String
    
    init(nome: String, raca: String) {
        self.nome = nome
        self.raca = raca
    }
}

extension Cachorro: FormatadorProtocol {
    
    
    func getFormatado() -> String {
        return "\(nome) \(raca)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(nome) \(raca)"
    }
    
}
