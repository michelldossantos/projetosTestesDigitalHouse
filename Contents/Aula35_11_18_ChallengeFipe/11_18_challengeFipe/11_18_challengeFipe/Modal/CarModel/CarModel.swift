//
//	CarModel.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CarModel : NSObject, NSCoding{

	var anos : [Ano]!
	var modelos : [Modelo]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		anos = [Ano]()
		if let anosArray = dictionary["anos"] as? [[String:Any]]{
			for dic in anosArray{
				let value = Ano(fromDictionary: dic)
				anos.append(value)
			}
		}
		modelos = [Modelo]()
		if let modelosArray = dictionary["modelos"] as? [[String:Any]]{
			for dic in modelosArray{
				let value = Modelo(fromDictionary: dic)
				modelos.append(value)
			}
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if anos != nil{
			var dictionaryElements = [[String:Any]]()
			for anosElement in anos {
				dictionaryElements.append(anosElement.toDictionary())
			}
			dictionary["anos"] = dictionaryElements
		}
		if modelos != nil{
			var dictionaryElements = [[String:Any]]()
			for modelosElement in modelos {
				dictionaryElements.append(modelosElement.toDictionary())
			}
			dictionary["modelos"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         anos = aDecoder.decodeObject(forKey :"anos") as? [Ano]
         modelos = aDecoder.decodeObject(forKey :"modelos") as? [Modelo]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if anos != nil{
			aCoder.encode(anos, forKey: "anos")
		}
		if modelos != nil{
			aCoder.encode(modelos, forKey: "modelos")
		}

	}

}