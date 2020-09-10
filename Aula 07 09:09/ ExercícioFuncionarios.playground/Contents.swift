import UIKit

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String

    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf

    }

    func bonusAnual() -> Double {

        return salario * 0.1
    }

}


class Programador : Funcionario {
    var plataformaTrabalho: String


    init(nome: String, salario: Double, cpf: String, plataformaTrabalho: String) {

        self.plataformaTrabalho = plataformaTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)

    }

    override func bonusAnual() -> Double {
        return salario * 0.2
    }



}


class Designer : Funcionario {
    var ferramentaPreferida: String


    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String) {

        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)

    }

    override func bonusAnual() -> Double {
        return salario * 0.15
    }



}



var programador = Programador(nome:"Michel", salario: 100000, cpf: "0182884567", plataformaTrabalho: "iOS")
print("Nome do funcionário: \(programador.nome)")
print("Salário do funcionário: \(programador.salario)")
print("CPF do funcionário: \(programador.cpf)")
print("Plataforma preferida  do funcionário: \(programador.plataformaTrabalho)")
let bonusProgramador = programador.bonusAnual()
print("Bonus anual do funcionário: \(programador.bonusAnual())")

print("\n#########\n")

var designer = Designer (nome:"Igor", salario: 100000, cpf: "0182884568", ferramentaPreferida: "Gimp")
print("Nome do funcionário: \(designer.nome)")
print("Salário do funcionário: \(designer.salario)")
print("CPF do funcionário: \(designer.cpf)")
print("Plataforma preferida  do funcionário: \(designer.ferramentaPreferida)")
let bonusDesigner = designer.bonusAnual()
print("Bonus anual do funcionário: \(designer.bonusAnual())")






