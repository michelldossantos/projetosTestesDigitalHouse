//
//  ViewController.swift
//  Locadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func botaoProdutos(_ sender: UIButton) {
        tipoProduto(sender: sender)
    }
    
    @IBOutlet weak var labelMostraMensagem: UILabel!
    
    
    var titanic = Dvd(codigo: 1, nome: "Titanic")
    var uno = Carro(codigo: 05, nome: "Uno", placa: "IPQ3546")
    var fortalezaDigital = Livro(codigo: 07, nome: "Fortaleza Digital", numeroPaginas: 276)
    var todaFormaDeAmar = Cd(codigo: 07, nome: "Toda Forma de Amar", autor: "Rogério Flausino")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    func tipoProduto(sender:UIButton ){
        if sender.currentTitle == "UNO"{
            labelMostraMensagem.text = uno.locar()
        }else if sender.currentTitle == "Titanic"{
            labelMostraMensagem.text = titanic.locar()
        }else if sender.currentTitle == "Fortaleza Digital"{
            labelMostraMensagem.text = fortalezaDigital.locar()
        }else{
            labelMostraMensagem.text = todaFormaDeAmar.locar()
        }
    }
    

}

