//
//  bestHotelViewController.swift
//  DesafioHotelG
//
//  Created by Michel dos Santos on 12/10/20.
//

import UIKit

class bestHotelViewController: UIViewController {
    @IBOutlet weak var labelBestHotel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func setup (nameBestHotel: String){
        labelBestHotel.text = nameBestHotel
    }


}
