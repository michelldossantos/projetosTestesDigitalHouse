//
//  ViewController.swift
//  exercise_spider
//
//  Created by Michel dos Santos on 24/10/20.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func actionAddMovie(_ sender: Any) {
        if let screenAddMovie = UIStoryboard(name: "AddMovie", bundle: nil).instantiateInitialViewController() as? AddMovieViewController{
            
            navigationController?.pushViewController(screenAddMovie, animated: true)
            
            screenAddMovie.setOnSalve { (Movie) in
                self.arrayMovies.append(Movie)
                self.tableListFilm.reloadData()
                
            }
        }
    }
    
    @IBOutlet weak var tableListFilm: UITableView!
    
    var arrayMovies = [Movie]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableListFilm.delegate = self
        tableListFilm.dataSource = self
        arrayMovies.append(Movie(name: "Spider", type: "Ação", note: "4 ⭐️", image: "spider.png"))
        arrayMovies.append(Movie(name: "Spider", type: "Ação", note: "4 ⭐️", image: "spider.png"))
        arrayMovies.append(Movie(name: "Spider", type: "Ação", note: "4 ⭐️", image: "spider.png"))
    }


}


extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screenDetail = UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as? DetailViewController{
            navigationController?.pushViewController(screenDetail, animated: true)
            
            screenDetail.movie = arrayMovies[indexPath.row]
        }
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        cell.setup(movie: arrayMovies[indexPath.row])
        return cell
    }
    
    
}
