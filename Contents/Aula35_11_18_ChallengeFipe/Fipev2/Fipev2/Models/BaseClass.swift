//
//  BaseClass.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit

class BaseClass: NSObject {

        var codigo : String!
        var nome : String!

        init(fromDictionary dictionary: [String:Any]){
            codigo = dictionary["codigo"] as? String
            nome = dictionary["nome"] as? String
            
            if codigo == nil{
                if let intID = dictionary["codigo"] as? Int{
                    codigo = String(intID)
                }
            }
        }

     
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if codigo != nil{
                dictionary["codigo"] = codigo
            }
            if nome != nil{
                dictionary["nome"] = nome
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             codigo = aDecoder.decodeObject(forKey: "codigo") as? String
             nome = aDecoder.decodeObject(forKey: "nome") as? String

        }


        @objc func encode(with aCoder: NSCoder)
        {
            if codigo != nil{
                aCoder.encode(codigo, forKey: "codigo")
            }
            if nome != nil{
                aCoder.encode(nome, forKey: "nome")
            }

        }

    }

