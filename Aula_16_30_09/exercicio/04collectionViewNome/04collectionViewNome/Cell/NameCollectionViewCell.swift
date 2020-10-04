//
//  NameCollectionViewCell.swift
//  04collectionViewNome
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class NameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    func setup(nome: String){
        labelName.text = nome
    }
}
