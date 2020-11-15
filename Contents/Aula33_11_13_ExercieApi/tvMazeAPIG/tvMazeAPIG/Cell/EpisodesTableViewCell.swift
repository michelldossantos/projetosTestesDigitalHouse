//
//  EpisodesTableViewCell.swift
//  tvMazeAPIG
//
//  Created by Michel dos Santos on 14/11/20.
//

import UIKit

class EpisodesTableViewCell: UITableViewCell {
    @IBOutlet weak var labelEpisodeName: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    var numberOfEpisode = 0
    
    
    func setup(episode:Episodes_Episodes){
        if let nameEpisode = episode.name {
            labelEpisodeName.text = " Episódio \(numberOfEpisode + 1 )  -> \(nameEpisode)"
        }else{
            labelEpisodeName.text = " Episódio \(numberOfEpisode + 1 )  -> Sem Nome!"
        }
        
        
        if let summary = episode.summary{
            if summary != ""{
                let sumaryedit1 = summary.replacingOccurrences(of: "<p>" , with: " ")
                let sumaryedit2 = sumaryedit1.replacingOccurrences(of: "</p>" , with: " ")
                labelDescription.text = sumaryedit2
            }else{
                labelDescription.text = "Sem descrição"
            }
            
        }else{
            labelDescription.text = "Sem descrição"
        }
        
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
