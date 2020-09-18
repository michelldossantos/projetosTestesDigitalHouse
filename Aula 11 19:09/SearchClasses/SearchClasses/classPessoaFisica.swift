//
//  classPessoaFisica.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatadorProtocol {
    
    
    func getFormatado() -> String {
        return "\(nome) \(cpf)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(nome) \(cpf)"
    }
    
}
