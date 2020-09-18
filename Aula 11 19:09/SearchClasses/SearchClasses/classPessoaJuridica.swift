//
//  classPessoaJuridica.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}

extension PessoaJuridica: FormatadorProtocol {
    
    
    func getFormatado() -> String {
        return "\(nome) \(cnpj)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Jurídica: \(nome) \(cnpj)"
    }
    
}
