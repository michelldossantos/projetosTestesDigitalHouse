//
//  Produto.swift
//  Locadora
//
//  Created by Michel dos Santos on 18/09/20.
//  Copyright © 2020 Michel Santos. All rights reserved.
//

//Exercício 3:
//
//Crie um app de locadora...
//
//Nessa locadora é possível fazer locação de DVDs, Livros, CDs e Carros.
//Todos eles tem um código e um nome.
//
//Porém o DVD, possui um formato de vídeo.
//O Livro tem a quantidade de páginas.
//O CD tem o cantor.
//E o Carro tem a placa.
//
//Todos eles tem a função de fazerLocação porém:
//O DVD deve avisar ao usuário que deve devolver em 5 dias.
//O CD deve avisar ao usuário que deve devolver em 3 dias.
//O Carro deve avisar ao usuário que deve devolver em 7 dias.
//O Livro deve avisar ao usuário que deve devolver em 15 dias.
//
//* Nesse exercício use POO, aplique Herança e Polimorfismo.

import Foundation

class Produto{
    var codigo: Int
    var nome: String
    
    init(codigo: Int, nome: String) {
        self.nome = nome
        self.codigo = codigo
    }
    
}
