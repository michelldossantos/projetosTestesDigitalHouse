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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
