import UIKit




class Vendedor{
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta: Int // acesso apenas na classe
    
    // Inicializador
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Int) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
        
    }
    
    // Métodos INTERNOS para cada tipo de Item(Paleto, Vestido, Bone)
    private func venderPaleto(quantidade: Int) -> Int{ // acesso apenas na classe
        
        if quantidade < 3 { // quantidade menor que 3
            saldoEmConta += 400 * quantidade
            return saldoEmConta // retorna e encerra
        }
        // caso if seja false, obrigatoriamente executara as linhas abaixo, por isso não necessita de else
        
        saldoEmConta += 350 * quantidade
        return saldoEmConta

    }
    
    private func venderVestido(quantidade: Int) -> Int{
        
        if quantidade < 5 {
            saldoEmConta += 900 * quantidade
            return saldoEmConta
               }
        
        saldoEmConta += 900 * quantidade - 250
        return saldoEmConta
    }
    
    
    private func venderBone(quantidade: Int) -> Int{
        
        if quantidade >= 2 {
            saldoEmConta += 50 * (quantidade - (quantidade / 2) )
            return saldoEmConta
        }
        saldoEmConta += 50
        return saldoEmConta
        
    }
    
    
    // Metodo Vender , pega o Item e a quantidade de peças e chama a função correspondente a cada item e envia a quantidade de peças vendidas
    func vender(quantidadeDePecas: Int, tipoPeca : String) {
        switch tipoPeca {
        case "Paleto":
            venderPaleto(quantidade: quantidadeDePecas)
        case "Vestido":
            venderVestido(quantidade: quantidadeDePecas)
        case "Bone":
            venderBone(quantidade: quantidadeDePecas)
        default:
            "Error"
        }
        
        
    }
    
    func getSaldoEmConta() {
        print("O saldo em conta é de R$ \(saldoEmConta),00")
    }
}




var claudio = Vendedor(nome: "Cláudio", idade: 25, cpf: "0177256-34", saldoEmConta: 0)

//Saldo em conta Inicial
claudio.getSaldoEmConta()


//claudio.vender(quantidadeDePecas: 3, tipoPeca: "Paleto")
//claudio.getSaldoEmConta()
//claudio.vender(quantidadeDePecas: 1, tipoPeca: "Paleto")
//claudio.getSaldoEmConta()


//claudio.vender(quantidadeDePecas: 5, tipoPeca: "Vestido")
//claudio.getSaldoEmConta()
//claudio.vender(quantidadeDePecas: 1, tipoPeca: "Vestido")
//claudio.getSaldoEmConta()

//
//claudio.vender(quantidadeDePecas: 3, tipoPeca: "Bone")
//claudio.getSaldoEmConta()
claudio.vender(quantidadeDePecas: 6, tipoPeca: "Bone")
claudio.getSaldoEmConta()












