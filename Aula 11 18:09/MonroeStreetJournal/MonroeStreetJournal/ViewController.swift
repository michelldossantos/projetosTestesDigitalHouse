//
//  ViewController.swift
//  MonroeStreetJournal
//
//  Created by Michel dos Santos on 19/09/20.
//

import UIKit

class ViewController: UIViewController {
    var pessoa = Pessoas(nome: "João", rg: "027184567", endereco: "Rua Monte Carlo")
    var empresa = Empresas(nomeComercial: "Codando", cnpg: "02887172319", numeroFuncionarios: 25)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pessoa.mensagem()
        empresa.mensagem()
    }


}

