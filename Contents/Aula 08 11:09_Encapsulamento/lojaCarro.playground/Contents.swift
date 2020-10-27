import UIKit

/*a
Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja. No momento, eles tem 50 carros em estoque.
Para sair um carro do estoque, esse carro precisa ser vendido, não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.
Teste de mesa:
tem 50
se vende 1 fica com 49
tem 49
se vende 5 fica com 44
ganha 1 da fábrica
tem 45
vende 44 fica com 1
ganha 1 da fábrica
tem 2
vende 2 fica com 0
ganha 2 da fábrica
tem 2
*/



class Loja{
    
    var nome: String
    private  var  totalCarros: Int = 50
    
    init(nome: String) {
        self.nome = nome
    }
    
    func vender(quantidade: Int)  {
        
        if  totalCarros > 0{
            if quantidade >= 5 {
                totalCarros -= quantidade - 1
                print("Parabéns, Loja vendeu 5 carros ou mais de uma única vez e ganhou 1 carro")
            }else{
                totalCarros -= quantidade
            }
        }
        
        if totalCarros == 0 { // Se estoque zerar ganha 2
            totalCarros += 2
            print("Parabéns, Loja ganhou 2 carros pela venda do estoque todo")
        }
        
    }
    
    func getTotalCarros()  {
        
        print("Total de carros no estoque é de \(totalCarros)")
        
    }
}


var a = Loja(nome: "Venda Certa")

a.getTotalCarros()
a.vender(quantidade: 1)
a.getTotalCarros()
a.vender(quantidade: 5)
a.getTotalCarros()
a.vender(quantidade: 44)
a.getTotalCarros()
a.vender(quantidade: 2)
a.getTotalCarros()


