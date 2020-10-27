import UIKit

class Mamifero{
    //TEM: Atribuitos / Propriedades / Características
       var nome: String
       var tamanho: Double
       var dataNascimento: String
       var raca: String
       var peso: Double
       var cor: String
       //Inicializa
       init(nome: String, tamanho:Double, dataNascimento: String, raca: String, peso: Double, cor: String) {
           self.nome = nome
           self.tamanho = tamanho
           self.dataNascimento = dataNascimento
           self.raca = raca
           self.peso = peso
           self.cor = cor
       }
    
}

class Cachorro: Mamifero { // herda de mamífero
   
    
    //Faz: Methods, Funcs, Action
    func late() {
        print("AUAUAU")
    }
    
    func brinca() {
        print("Se diverte")
    }
    
    func pula() {
        print("Sai do chão")
    }
    
    func come() {
        print("Engorda")
        
    }
    
    
}

class Gato: Mamifero { // erda de mamífero
   
    
    //Faz: Methods, Funcs, Action
    func late() {
        print("Miauu")
    }
    
    func brinca() {
        print("Se diverte bastante")
    }
    
    func pula() {
        print("Pula mais que cachorro")
    }
    
    func come() {
        print("Come rato")
        
    }
    
    
}


let pipoca = Cachorro(nome: "Pipoca", tamanho: 0, dataNascimento: "20/02/2019",
                      raca: "Vira-Lata", peso:3.2, cor: "Preta")

let branquinho = Gato(nome: "Branquinho", tamanho: 1, dataNascimento: "19/04/2018",
                      raca: "Sem Raça", peso: 2.5, cor: "Branca")

print(pipoca.nome)
print(branquinho.nome)
