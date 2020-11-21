//
//  CarModelTableViewCell.swift
//  11_18_challengeFipe
//
//  Created by Michel dos Santos on 19/11/20.
//

import UIKit

class CarModelTableViewCell: UITableViewCell {

    
    
//    var brand: Brand?
    
   @IBOutlet var labelBrand: UILabel!
    
    
    
    func setup(modelo: Modelo)  {
        labelBrand.text = modelo.nome
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

