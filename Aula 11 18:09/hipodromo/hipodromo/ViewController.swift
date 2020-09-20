//
//  ViewController.swift
//  hipodromo
//
//  Created by Michel dos Santos on 19/09/20.
//

import UIKit

class ViewController: UIViewController {
    var apostador = Apostadores()
    var kronika = KronitaTv()
    var casaDeApostas = CasaDeApostas()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apostador.notificar()
        kronika.notificar()
        casaDeApostas.notificar()
   
    }


}

