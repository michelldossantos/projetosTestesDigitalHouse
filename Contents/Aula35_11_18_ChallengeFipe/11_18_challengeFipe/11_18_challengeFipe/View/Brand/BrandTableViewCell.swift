//
//  BrandTableViewCell.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 18/11/20.
//

import UIKit

class BrandTableViewCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    
    
    func setup (brand:Brand){
        
        labelName.text = brand.nome
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
