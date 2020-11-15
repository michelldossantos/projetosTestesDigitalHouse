//
//  SeasonViewController.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit

class SeasonViewController: UIViewController {

    @IBOutlet weak var tableViewSeason: UITableView!
    var arrayteste =  [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSeason.dataSource = self
        tableViewSeason.delegate = self
        
//        arrayteste.append("adasdas")
//        arrayteste.append("adasdas")
//        arrayteste.append("aasd")
//        arrayteste.append("dasd")
//
        tableViewSeason.reloadData()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SeasonViewController: UITableViewDelegate{
    
}
extension SeasonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayteste.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeasonTableViewCell", for: indexPath) as! SeasonTableViewCell
        cell.setup(string: arrayteste[indexPath.row])
       
                return cell
        
    }
    
    
}
