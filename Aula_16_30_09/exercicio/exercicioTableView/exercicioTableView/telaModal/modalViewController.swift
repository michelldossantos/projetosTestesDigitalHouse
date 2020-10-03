//
//  modalViewController.swift
//  exercicioTableView
//
//  Created by Michel dos Santos on 02/10/20.
//

import UIKit

class modalViewController: UIViewController {

    @IBOutlet weak var labelNomeModal: UILabel!
    
    @IBAction func botaoFechar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
    func setLabelNome(pessoa: Pessoa){
        labelNomeModal.text = pessoa.nome
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
