//
//  Pessoas.swift
//  MonroeStreetJournal
//
//  Created by Michel dos Santos on 19/09/20.
//

import Foundation

class Pessoas:notificarProtocol{
    var nome: String
    var rg: String
    var endereco: String
    
    init(nome:String, rg: String, endereco: String) {
        self.nome = nome
        self.rg = rg
        self.endereco = endereco
        
    }
    
//    func assinar() {
//        <#code#>
//    }
    
    func mensagem() {
        print("Muito obrigado, MonroeStreetJournal")
    }
}
