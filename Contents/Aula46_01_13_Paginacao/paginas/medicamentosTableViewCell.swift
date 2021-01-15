//
//  medicamentosTableViewCell.swift
//  paginas
//
//  Created by Michel dos Santos on 13/01/21.
//

import UIKit

class medicamentosTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(medicamento: Item){
        
        labelName.text =  medicamento.id
    }

}
