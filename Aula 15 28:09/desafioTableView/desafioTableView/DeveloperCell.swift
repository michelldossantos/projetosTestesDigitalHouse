//
//  DeveloperCell.swift
//  desafioTableView
//
//  Created by Michel dos Santos on 28/09/20.
//

import UIKit

class DeveloperCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var labelEmail: UILabel!
    
    
    func setup(developer: Developer) {
        labelName.text = developer.nome
        profileImage.image = UIImage(named: developer.profileImage)
        labelEmail.text = developer.email
        profileImage.layer.cornerRadius = 40
        
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





