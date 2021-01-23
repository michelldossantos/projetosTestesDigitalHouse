//
//  medicamentosTableViewCell.swift
//  paginas
//
//  Created by Michel dos Santos on 13/01/21.
//

import UIKit

class medicamentosTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCode: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(medicamento: Item){
        let name = medicamento.name
        let code = medicamento.id
        labelName.text =  "Nome: \(name!)"
        labelCode.text = "Código: \(code!)"
    }

}
