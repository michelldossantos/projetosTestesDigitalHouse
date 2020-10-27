//
//  classCaneta.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String

    init(marca: String) {
        self.marca = marca
    }
}


extension Caneta: FormatadorProtocol {
    
    
    func getFormatado() -> String {
        return "\(marca) "
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(marca) )"
    }
    
}
