//
//  PessoaTableViewCell.swift
//  exercicioTableView
//
//  Created by Michel dos Santos on 02/10/20.
//

import UIKit

class PessoaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelNome: UILabel!
    
    @IBOutlet weak var labelCargo: UILabel!
    
    @IBOutlet weak var labelEmail: UILabel!
    
    func setup(pessoa: Pessoa){
        labelNome.text = pessoa.nome
        labelCargo.text = pessoa.cargo
        labelEmail.text = pessoa.email
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
