//
//  MovieRelatedCollectionViewCell.swift
//  exercise_spider
//
//  Created by Michel dos Santos on 24/10/20.
//

import UIKit

class MovieRelatedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageMovieRelated: UIImageView!
    @IBOutlet weak var labelNameRelated: UILabel!
    
    func setup(movie: Movie)  {
        imageMovieRelated.image = UIImage(named: movie.image)
        labelNameRelated.text = movie.name
    }
}
