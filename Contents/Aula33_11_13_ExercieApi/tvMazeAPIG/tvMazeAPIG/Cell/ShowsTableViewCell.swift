//
//  ShowsTableViewCell.swift
//  201113_seasonShows
//
//  Created by Raphael A. P. Oliveira on 13/11/20.
//

import UIKit

class ShowsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var labelShow: UILabel!
    
    func setup(show: Shows_RootClass) {
        let link = String(show.image.original).replacingOccurrences(of: "http", with: "https")
        let url = URL(string: link)
        if let data = try? Data(contentsOf: url!) {
            self.imageShow.image = UIImage(data: data)
        }
        self.labelShow.text = ""
        self.labelShow.text = show.name
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
