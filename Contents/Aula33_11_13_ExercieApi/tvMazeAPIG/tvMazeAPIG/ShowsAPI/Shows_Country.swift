//
//	Shows_Country.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Shows_Country : NSObject, NSCoding{

	var code : String!
	var name : String!
	var timezone : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		code = dictionary["code"] as? String
		name = dictionary["name"] as? String
		timezone = dictionary["timezone"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if code != nil{
			dictionary["code"] = code
		}
		if name != nil{
			dictionary["name"] = name
		}
		if timezone != nil{
			dictionary["timezone"] = timezone
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         code = aDecoder.decodeObject(forKey: "code") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         timezone = aDecoder.decodeObject(forKey: "timezone") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if code != nil{
			aCoder.encode(code, forKey: "code")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if timezone != nil{
			aCoder.encode(timezone, forKey: "timezone")
		}

	}

}