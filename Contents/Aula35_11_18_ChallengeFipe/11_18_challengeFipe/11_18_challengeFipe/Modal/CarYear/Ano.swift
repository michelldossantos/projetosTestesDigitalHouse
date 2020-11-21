//
//	Ano.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport








import Foundation


class Ano : NSObject, NSCoding{

	var codigo : String!
	var nome : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		codigo = dictionary["codigo"] as? String
		nome = dictionary["nome"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
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

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
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
