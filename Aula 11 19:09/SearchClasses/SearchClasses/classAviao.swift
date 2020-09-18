//
//  classAviao.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: FormatadorProtocol {
    
    
    func getFormatado() -> String {
        return "\(modelo) \(cidade)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(modelo) \(cidade)"
    }
    
}


