//
//  DetailViewController.swift
//  exercise_spider
//
//  Created by Michel dos Santos on 24/10/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageMovieDatail: UIImageView!
    
    @IBOutlet weak var labelNameDatail: UILabel!
    
    @IBOutlet weak var collectionMoviesDetail: UICollectionView!
    
   var  arrayMoviesRelated = [Movie]()
    var movie: Movie!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = movie.name
        imageMovieDatail.image = UIImage(named: movie.image)
        labelNameDatail.text = movie.name
        
        
        
        collectionMoviesDetail.dataSource = self

      
        
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
        arrayMoviesRelated.append(Movie(name: "Iron", type: "Acao", note: "5", image: "iron.jpg"))
    }
    

  

}

extension DetailViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayMoviesRelated.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieRelatedCollectionViewCell", for: indexPath) as! MovieRelatedCollectionViewCell
        cell.setup(movie: arrayMoviesRelated[indexPath.row])
        return cell
        
    }
    
    
}
