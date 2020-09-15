import UIKit
//
/*Exercício 2:  Crie um protocolo chamado Voador. Defina o método Voar nesse protocolo, com a seguinte assinatura: func voar() -> Void Depois, crie as seguintes classes: Pato, Avião, Super-Homem. Faça cada uma implementar o protocolo Voador e definir o comportamento do método Voar em cada caso: ●Pato: o pato tem uma energia. Cada vez que voa, ele perde 5 unidades de energia e é exibida na tela a frase “Estou voando como um pato”●Avião: o avião tem horas de voo. Cada vez que o avião voa, soma 13h de voo e é exibida na tela a frase “Estou voando como um avião”●Super-Homem:  o  Super-Homem  tem  experiência.  Cada  vez  que  o  Super-Homem voa,  a  experiência  dele  aumenta  3  unidades,  e  é  exibida  na  tela  a  frase “Estou voando como um campeão”Crie  uma  classe  TorreDeControle  que  contenha  uma  lista  de  voadores  inicializada  sem elementos. Depois, crie dois métodos na classe TorreDeControle: ●public func voamTodos() -> Void Esse  método  será  encarregado  de  percorrer  a  lista  de  voadores  e  fazer  com  que eles voem. ●public func adicionarVoador(umVoador: Voaador) -> Void Esse método será encarregado de adicionar um voador à lista de voadores. Crie um programa (Playground) e use-o para criar: ●um pato ●um avião ●o Super-Homem ●uma torre de controle Adicione o pato, o avião e o Super-Homem à torre de controle. Peça para a torre de controle fazer todos os voadores voarem. Observe o comportamento.*/


protocol Voador {
    func voar()
    }


class Pato: Voador{
    func voar() {
        print("Estou voando como um pato")
    }
}

class Aviao: Voador{
    func voar() {
        print("Estou voando como um avião")
    }
}

class SuperHomem: Voador{
    func voar() {
        print("Estou voando como um campeão")
    }
}


class TorreDeControle{
    
    var listaVoadores = [Voador]()
    
    func  adicionarVoador(umVoador: Voador){
        
        listaVoadores.append(umVoador)
    }
    
    func voamTodo() {
        
        for voador in listaVoadores{
            voador.voar()
        }
    }
 
}

var torre = TorreDeControle()

torre.adicionarVoador(umVoador: Aviao())
torre.voamTodo()

