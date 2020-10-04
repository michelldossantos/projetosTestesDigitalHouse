//
//  ViewController.swift
//  exercicioTableView
//
//  Created by Michel dos Santos on 02/10/20.
//

//01 - Criar um app:
//- Tenha uma lista (tableView) com 15 pessoas.
//- Cada célula (linha) deve ter o nome, cargo e email de uma pessoa.
//- Quando tocar numa celula, deve abrir uma tela em modal, nessa tela deve haver um botão de fechar e um label com o nome da pessoa.


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewPessoa: UITableView!
    
    var arrayPessoa = [Pessoa]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPessoa.delegate = self
        tableViewPessoa.dataSource = self
        
        arrayPessoa.append(Pessoa(nome: "Narlei", cargo: "Ios", email: "narlei@narlei"))
        arrayPessoa.append(Pessoa(nome: "Jessica", cargo: "Ios", email: "jessica@gmail"))
        arrayPessoa.append(Pessoa(nome: "Pedro", cargo: "Android", email: "pedro@gmail"))
        arrayPessoa.append(Pessoa(nome: "Lucas", cargo: "Java", email: "lucas@gmail"))
        arrayPessoa.append(Pessoa(nome: "João", cargo: "PHP", email: "joao@gmail.com"))
        
        arrayPessoa.append(Pessoa(nome: "Narlei", cargo: "Ios", email: "narlei@narlei"))
        arrayPessoa.append(Pessoa(nome: "Jessica", cargo: "Ios", email: "jessica@gmail"))
        arrayPessoa.append(Pessoa(nome: "Pedro", cargo: "Android", email: "pedro@gmail"))
        arrayPessoa.append(Pessoa(nome: "Lucas", cargo: "Java", email: "lucas@gmail"))
        arrayPessoa.append(Pessoa(nome: "João", cargo: "PHP", email: "joao@gmail.com"))
        arrayPessoa.append(Pessoa(nome: "Paulo", cargo: "PHP", email: "paulo@gmail.com"))
        arrayPessoa.append(Pessoa(nome: "Joana", cargo: "PHP", email: "joana@gmail.com"))
        arrayPessoa.append(Pessoa(nome: "Laura", cargo: "PHP", email: "laura@gmail.com"))
        arrayPessoa.append(Pessoa(nome: "Dani", cargo: "PHP", email: "Dani@gmail.com"))
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let telamodal = UIStoryboard(name: "modalStoryboard", bundle: nil).instantiateInitialViewController() as? modalViewController {
            
            present(telamodal, animated: true, completion: nil)
            telamodal.setLabelNome(pessoa: arrayPessoa[indexPath.row])
        }
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPessoa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PessoaTableViewCell", for: indexPath) as! PessoaTableViewCell
        
        cell.setup(pessoa: arrayPessoa[indexPath.row])
        
        return cell
    }
     
    
    
}



