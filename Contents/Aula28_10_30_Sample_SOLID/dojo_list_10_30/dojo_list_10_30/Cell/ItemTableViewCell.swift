//
//  ItemTableViewCell.swift
//  dojo_list_10_30
//
//  Created by Michel dos Santos on 30/10/20.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNameItem: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(item: Item){
        
        labelNameItem.text = item.name
    }

}
