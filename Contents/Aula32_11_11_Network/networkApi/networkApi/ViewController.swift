//
//  ViewController.swift
//  networkApi
//
//  Created by Michel dos Santos on 11/11/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textFieldValue: UITextField!
    @IBAction func buttonConvert(_ sender: Any) {
        request()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    func request(){
        
        AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=BRL").responseJSON { response in
            if let dictionary = response.value as? [String: Any] {
                let valorAtual = Covert(fromDictionary: dictionary)
                
                self.convertValue(valor: valorAtual)
            }
            
        }
        
        
        
    }
    
    
    
    func convertValue(valor: Covert){
        let valueBase = valor.rates["USD"]
        let result = Double( textFieldValue.text!)! * valueBase!
        labelResult.text = String(result)
        
        
    }

}

