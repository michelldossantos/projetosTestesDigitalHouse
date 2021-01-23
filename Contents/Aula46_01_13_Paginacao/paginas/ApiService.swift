//
//  ApiService.swift
//  paginas
//
//  Created by Michel dos Santos on 13/01/21.
//

import Foundation
import Alamofire

class ApiService{
    func requestMedicamentos(page: Int,onComplete: @escaping ([Item]) -> Void)  {
        //                idPageApi = Int.random(in: 1..<10) // altera a pagina que ira mostrar os filmes obs
        
        
        AF.request("https://drugsapi.herokuapp.com/drugs?page=\(page)&per=2").responseJSON { response in
            if let dictionary = response.value as? [String: Any], let arrayItens = dictionary["items"] as? [[String:Any]]{
                
                var  arrayMedicamentos = [Item]()
                for result in arrayItens{
                    
                    let resultValue = Item(fromDictionary: result)
                    arrayMedicamentos.append(resultValue)
                    
                }
                onComplete(arrayMedicamentos)
                return
            }
            onComplete([])
        }
    }
}


