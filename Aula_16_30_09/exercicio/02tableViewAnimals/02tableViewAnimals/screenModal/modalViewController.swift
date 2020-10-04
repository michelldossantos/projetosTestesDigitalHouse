//
//  modalViewController.swift
//  02tableViewAnimals
//
//  Created by Michel dos Santos on 04/10/20.
//

import UIKit

class modalViewController: UIViewController {
    @IBOutlet weak var labelNomeModal: UILabel!
    
    func setup(animal: Animals){
        labelNomeModal.text = animal.name
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
