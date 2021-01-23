//
//  DrogstoreTableViewCell.swift
//  paginacaoG
//
//  Created by Michel dos Santos on 16/01/21.
//

import UIKit

class DrogstoreTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(medicamento: Item){
        
    }

}
