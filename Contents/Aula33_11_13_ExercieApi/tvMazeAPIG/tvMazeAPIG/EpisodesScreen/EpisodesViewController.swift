//
//  EpisodesViewController.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit
import Alamofire

class EpisodesViewController: UIViewController {

    @IBOutlet weak var tableViewEpisodes: UITableView!
    var arrayEpisodes = [Episodes_Episodes]()
    var idSeason = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewEpisodes.dataSource = self
        loadSeasonss()
        tableViewEpisodes.reloadData()
    
    }
    
    func loadSeasons(arrayEpisodes: [Episodes_Episodes]) {
        self.arrayEpisodes = arrayEpisodes
        tableViewEpisodes.reloadData()
  
    }
    
    
    func loadSeasonss(){
        AF.request("https://api.tvmaze.com/seasons/\(idSeason)/episodes").responseJSON { (response) in
            
            if let arrayDicts = response.value as? [[String: Any]] {
                DispatchQueue.main.async {
                var arrayEpisodes = [Episodes_Episodes]()
                for item in arrayDicts {
                    arrayEpisodes.append(Episodes_Episodes(fromDictionary: item))
                }
             
                
                    self.loadSeasons(arrayEpisodes: arrayEpisodes)
                }
                
                
            }
        }
    }
    

}

extension EpisodesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEpisodes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodesTableViewCell", for: indexPath) as! EpisodesTableViewCell
        cell.numberOfEpisode = indexPath.row
        cell.setup(episode: arrayEpisodes[indexPath.row])
        
        return cell
    }
    
    
}



