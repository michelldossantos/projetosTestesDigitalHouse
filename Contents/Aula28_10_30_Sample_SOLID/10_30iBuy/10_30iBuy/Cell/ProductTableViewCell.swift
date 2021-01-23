//
//  ProductTableViewCell.swift
//  10_30iBuy
//
//  Created by Michel dos Santos on 31/10/20.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelName: UILabel!
    
    func setup(product:Product){
        
        labelName.text = product.name
    }
    
    func setupOpen(product:Product){
        
        labelName.text = product.name
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
