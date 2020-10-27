//
//  Empresas.swift
//  MonroeStreetJournal
//
//  Created by Michel dos Santos on 19/09/20.
//

import Foundation

class Empresas: notificarProtocol{
    var nomeComercial: String
    var cnpj: String
    var numeroFuncionarios: Int
    
    init(nomeComercial:String, cnpg: String, numeroFuncionarios: Int) {
        self.nomeComercial = nomeComercial
        self.cnpj = cnpg
        self.numeroFuncionarios = numeroFuncionarios
        
    }
    
    func mensagem() {
        print("Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados.")
    }
}
