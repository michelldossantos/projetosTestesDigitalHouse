//
//  SeasonViewController.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit
import Alamofire

class SeasonViewController: UIViewController {
    
    var idShow: Int = 0
    var nameSeason: String = ""
    var arraySeasons = [Season_Season]()
    var linkImage: String?

    @IBOutlet weak var tableViewSeason: UITableView!
    var arrayteste =  [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSeason.dataSource = self
        tableViewSeason.delegate = self
        
       
        loadSeasonss()
        tableViewSeason.reloadData()
        
    }
    
    func loadSeasons(arraySeasons: [Season_Season]) {
        self.arraySeasons = arraySeasons
        tableViewSeason.reloadData()
        print(self.arraySeasons.count)

      
    }
    
    func loadSeasonss(){
        AF.request("https://api.tvmaze.com/shows/\(idShow)/seasons").responseJSON { (response) in
            
            if let arrayDicts = response.value as? [[String: Any]] {
                DispatchQueue.main.async {
                var arraySeasons = [Season_Season]()
                for item in arrayDicts {
                    arraySeasons.append(Season_Season(fromDictionary: item))
                }
             
                
                    self.loadSeasons(arraySeasons: arraySeasons)
                }
                
                
            }
        }
    }
    



}

extension SeasonViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let showDetails = UIStoryboard(name: "Episodes", bundle: nil).instantiateInitialViewController() as? EpisodesViewController {
            
            showDetails.idSeason = arraySeasons[indexPath.row].id
            
            present(showDetails, animated: true, completion: nil)
        }
    }
}
extension SeasonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arraySeasons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeasonTableViewCell", for: indexPath) as! SeasonTableViewCell
        
        cell.nameSeason = self.nameSeason
        cell.numerSeason = Int(indexPath.row)
        cell.linkImage = linkImage
        cell.setup(season: arraySeasons[indexPath.row])
        
        
        
        
       
      return cell
        
    }
    
    
}
