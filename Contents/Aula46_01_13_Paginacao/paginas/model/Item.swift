//
//	Item.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Item : NSObject, NSCoding{

	var classification : String!
	var cnpj : String!
	var descriptionField : String!
	var id : String!
	var lab : String!
	var name : String!
	var reference : String!
	var tarja : String!
	var type : String!
	var value : Float!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		classification = dictionary["classification"] as? String
		cnpj = dictionary["cnpj"] as? String
		descriptionField = dictionary["description"] as? String
		id = dictionary["id"] as? String
		lab = dictionary["lab"] as? String
		name = dictionary["name"] as? String
		reference = dictionary["reference"] as? String
		tarja = dictionary["tarja"] as? String
		type = dictionary["type"] as? String
		value = dictionary["value"] as? Float
	}


	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if classification != nil{
			dictionary["classification"] = classification
		}
		if cnpj != nil{
			dictionary["cnpj"] = cnpj
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if id != nil{
			dictionary["id"] = id
		}
		if lab != nil{
			dictionary["lab"] = lab
		}
		if name != nil{
			dictionary["name"] = name
		}
		if reference != nil{
			dictionary["reference"] = reference
		}
		if tarja != nil{
			dictionary["tarja"] = tarja
		}
		if type != nil{
			dictionary["type"] = type
		}
		if value != nil{
			dictionary["value"] = value
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         classification = aDecoder.decodeObject(forKey: "classification") as? String
         cnpj = aDecoder.decodeObject(forKey: "cnpj") as? String
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         id = aDecoder.decodeObject(forKey: "id") as? String
         lab = aDecoder.decodeObject(forKey: "lab") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         reference = aDecoder.decodeObject(forKey: "reference") as? String
         tarja = aDecoder.decodeObject(forKey: "tarja") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         value = aDecoder.decodeObject(forKey: "value") as? Float

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if classification != nil{
			aCoder.encode(classification, forKey: "classification")
		}
		if cnpj != nil{
			aCoder.encode(cnpj, forKey: "cnpj")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if lab != nil{
			aCoder.encode(lab, forKey: "lab")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if reference != nil{
			aCoder.encode(reference, forKey: "reference")
		}
		if tarja != nil{
			aCoder.encode(tarja, forKey: "tarja")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if value != nil{
			aCoder.encode(value, forKey: "value")
		}

	}

}
