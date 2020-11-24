//
//  ViewController.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var TableViewShow: UITableView!
    
    var arrayShows = [Shows_RootClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewShow.delegate = self
        TableViewShow.dataSource = self
        
        getAPI()
        
        
    }
    
    func getAPI(){
        AF.request("https://api.tvmaze.com/shows?page=1").responseJSON { (response) in
            if let arrayDicts = response.value as? [[String: Any]] {
                
                    var arrayShows = [Shows_RootClass]()
                    for item in arrayDicts {
                        arrayShows.append(Shows_RootClass(fromDictionary: item))
                    }
                DispatchQueue.main.async {
                    self.loadShows(arrayShows: arrayShows)
                    
                }
            }
        }
    }
    
    
    
    
    func loadShows(arrayShows: [Shows_RootClass]) {
        self.arrayShows = arrayShows
        TableViewShow.reloadData()
    }
    
    
}

extension ViewController: UITableViewDelegate {


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let showDetails = UIStoryboard(name: "Season", bundle: nil).instantiateInitialViewController() as? SeasonViewController {

            showDetails.idShow = arrayShows[indexPath.row].id
            showDetails.nameSeason = arrayShows[indexPath.row].name
            showDetails.linkImage = String(arrayShows[indexPath.row].image.original).replacingOccurrences(of: "http", with: "https")
                
                navigationController?.pushViewController(showDetails, animated: true)
//                present(showDetails, animated: true, completion: nil)
                }
    }



}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowsTableViewCell", for: indexPath) as! ShowsTableViewCell
        
        cell.setup(show: arrayShows[indexPath.row])
        
        return cell
    }
    
    
}


