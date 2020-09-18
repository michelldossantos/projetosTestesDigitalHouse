//
//  ViewController.swift
//  SearchClasses
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arrayItens = [FormatadorProtocol]()
    
    
    @IBOutlet weak var SearchBarPesquisa: UISearchBar!
    @IBOutlet weak var labelLista: UILabel!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        SearchBarPesquisa.delegate = self
        arrayItens.append(PessoaFisica(nome: "Maria", cpf: "000001111"))
        arrayItens.append(PessoaJuridica(nome: "Joana", cnpj:  "000001111"))
        arrayItens.append(Aviao(modelo: "AEROBOERO", cidade: "Sapiranga"))
        arrayItens.append(Caneta(marca: "BIC"))
        arrayItens.append(Cachorro(nome: "BOB", raca: "Vira - lata"))
            
    }
    
    func filtrar(textoPesquisa: String){
        var arrayFiltrado = [FormatadorProtocol]()
        for item in arrayItens{
            if item.getFormatado().lowercased().contains(textoPesquisa.lowercased()){
                arrayFiltrado.append(item)
            }
        }
        
        var output = ""
        
        for item in arrayFiltrado{
            output = "\(output) \n \(item.getFormatadoParaUsuario()) "
        }
        labelLista.text = output
    }
    

}

extension ViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            filtrar(textoPesquisa: text)
        }
    }
    
}

