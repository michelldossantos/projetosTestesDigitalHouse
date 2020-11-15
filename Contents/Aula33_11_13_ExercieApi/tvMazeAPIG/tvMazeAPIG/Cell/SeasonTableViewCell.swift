//
//  SeasonTableViewCell.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit

class SeasonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelname: UILabel!
    
    
    func setup(string:String){
        labelname.text = string
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
