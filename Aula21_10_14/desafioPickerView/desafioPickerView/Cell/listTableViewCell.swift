//
//  listTableViewCell.swift
//  desafioPickerView
//
//  Created by Michel dos Santos on 14/10/20.
//

import UIKit

class listTableViewCell: UITableViewCell {

    @IBOutlet weak var textFieldName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupLabelName(city: City){
        
        textFieldName.text = " \(city.name) - \(city.country) - \(city.state)"
    }

}
