//
//  TableViewCell.swift
//  10_26_exerciseTabbar
//
//  Created by Michel dos Santos on 26/10/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelYear: UILabel!
    
    @IBOutlet var imageCar: UIImageView!

    func setup(car: Car){
        
        labelName.text = car.model
        labelYear.text = car.year
        imageCar.image = UIImage(named: car.nameImage)
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
