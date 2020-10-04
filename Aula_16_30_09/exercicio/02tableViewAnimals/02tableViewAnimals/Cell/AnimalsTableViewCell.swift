//
//  AnimalsTableViewCell.swift
//  02tableViewAnimals
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelbreed: UILabel!
    
    @IBOutlet weak var labelType: UILabel!
    
    @IBOutlet weak var labelweight: UILabel!
    
    func setup(animal: Animals){
        labelName.text = animal.name
        labelbreed.text = animal.breed
        labelweight.text = String( animal.weight)
        labelType.text = animal.type
        
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
