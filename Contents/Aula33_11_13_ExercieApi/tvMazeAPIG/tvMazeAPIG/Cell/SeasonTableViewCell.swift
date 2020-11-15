//
//  SeasonTableViewCell.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit

class SeasonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageSeason: UIImageView!
    @IBOutlet weak var labelNameSeason: UILabel!
    
    @IBOutlet weak var labelepisodeOrder: UILabel!
    
    var nameSeason:String?
    var numerSeason:Int?
    var linkImage: String?
    
    

    
    
    func setup(season: Season_Season){
        print(numerSeason)
        if let episodeOrder = season.episodeOrder{
            labelepisodeOrder.text = "Episodes: \(String(episodeOrder))"
        }else{
            labelepisodeOrder.text = "Sem Informação"
        }
//        if let nameSeason = nameSeason {
//            labelNameSeason.text = nameSeason
//        }else{
//            labelNameSeason.text = "Sem Informação"
//        }
        
        if let number = numerSeason {
            labelNameSeason.text = "Season \(Int(number)+1)"
                }
        
        
        let url = URL(string: linkImage!)
        if let data = try? Data(contentsOf: url!) {
            self.imageSeason.image = UIImage(data: data)
        }
        
        
        
        
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
