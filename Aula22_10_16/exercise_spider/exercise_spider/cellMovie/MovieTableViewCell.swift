//
//  MovieTableViewCell.swift
//  exercise_spider
//
//  Created by Michel dos Santos on 24/10/20.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelNote: UILabel!
    

    func setup(movie:Movie){
        imageMovie.image = UIImage(named: movie.image)
        labelName.text = movie.name
        labelType.text = movie.type
        labelNote.text = movie.note
        
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
