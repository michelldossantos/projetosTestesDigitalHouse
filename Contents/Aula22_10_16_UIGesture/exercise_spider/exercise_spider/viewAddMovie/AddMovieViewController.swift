//
//  AddMovieViewController.swift
//  exercise_spider
//
//  Created by Michel dos Santos on 25/10/20.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var onSave: ((_ movie: Movie) -> Void)?
    
    
    
    @IBOutlet weak var textFieldNameMovie: UITextField!
    
    @IBOutlet weak var textfieldType: UITextField!
    
    @IBAction func actionSaveMovie(_ sender: Any) {
        let newMovie = Movie(name: textFieldNameMovie.text!, type: textfieldType.text!, note: "5 ⭐️", image: "esqueceram.jpeg")
        onSave!(newMovie)
        
        navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setOnSalve (onSalve: @escaping (_ movie : Movie) -> Void){
           self.onSave = onSalve
       }
    

    
}
