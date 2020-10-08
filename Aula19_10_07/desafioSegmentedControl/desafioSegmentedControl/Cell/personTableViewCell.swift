//
//  personTableViewCell.swift
//  desafioSegmentedControl
//
//  Created by Michel dos Santos on 07/10/20.
//

import UIKit

class personTableViewCell: UITableViewCell {
    
    @IBOutlet var labelNamePerson: UILabel!
    @IBOutlet var imageViewPerson: UIImageView!
    
    func setup(person: Person){
        if  let developer = person as? Developer{
            labelNamePerson.text = developer.name
            imageViewPerson.image = UIImage(named: developer.nameImage)
            
        }else{
            labelNamePerson.text = person.name
            imageViewPerson.image = UIImage(named: person.nameImage)
            
        }
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
