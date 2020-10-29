//
//  ProductTableViewCell.swift
//  exercise_UIAlertController
//
//  Created by Michel dos Santos on 28/10/20.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var labelQuantityProduct: UILabel!
    @IBOutlet weak var labelNameProduct: UILabel!
    @IBOutlet weak var imageProduct: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(product: Product){
        labelNameProduct.text = product.name
        labelQuantityProduct.text = product.quantity
        imageProduct.image = UIImage(named: product.imageName)
    }

}
