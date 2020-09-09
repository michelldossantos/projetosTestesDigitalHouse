import UIKit

class Veiculo {
    var cor: String
    var preco: Double
    var qtdPassageiros: Int
    
    init(cor: String, preco: Double, qtdPassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.qtdPassageiros = qtdPassageiros
        
    }
    
    func calcularQtdCombustivel(distanciaKm: Float) -> Float {
        return distanciaKm
    }
    
}

class Carro: Veiculo {
    var tamanhoRodas: Int
   
    
    init(cor: String, preco: Double, qtdPassageiros: Int, tamanhoRodas: Int) {
        self.tamanhoRodas = tamanhoRodas
        super .init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
        
    }
    
    override func calcularQtdCombustivel(distanciaKm: Float) -> Float {
        return Float(tamanhoRodas * qtdPassageiros) * distanciaKm
    }
    
}

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
   
    
    init(cor: String, preco: Double, qtdPassageiros: Int, piloto: String, companhiaAerea : String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super .init(cor: cor, preco: preco, qtdPassageiros: qtdPassageiros)
        
    }
    
    override func calcularQtdCombustivel(distanciaKm: Float) -> Float {
        return Float(qtdPassageiros) * distanciaKm
    }
    
}

var carro = Carro (cor: "Vermelho", preco: 20000, qtdPassageiros: 5, tamanhoRodas: 17)

print("Cor do carro: \(carro.cor)")
print("Preço do carro: \(carro.preco)")
print("Quantidade de passageiros \(carro.qtdPassageiros)")
print("Tamanho da roda do carro: \(carro.tamanhoRodas)")

let qtdCombustivelCarro = carro.calcularQtdCombustivel(distanciaKm: 100)
print(" Quantidade de combustivel por viagem: \(qtdCombustivelCarro)")

print("\n------------\n")

var aviao = Aviao (cor: "Branco", preco: 200000, qtdPassageiros: 150, piloto: "Michel", companhiaAerea: "AZUL")

print("Cor do avião: \(aviao.cor)")
print("Preço do avião: \(aviao.preco)")
print("Quantidade de passageiros \(aviao.qtdPassageiros)")
print("Compahia Aerea: \(aviao.companhiaAerea)")
print("Nome Piloto: \(aviao.piloto)")

let qtdCombustivelAviao = aviao.calcularQtdCombustivel(distanciaKm: 1000)
print(" Quantidade de combustivel em KM: \(qtdCombustivelAviao)")




