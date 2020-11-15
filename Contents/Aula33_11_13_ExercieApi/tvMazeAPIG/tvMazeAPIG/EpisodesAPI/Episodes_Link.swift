//
//	Episodes_Link.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Episodes_Link : NSObject, NSCoding{

	var test : Episodes_Self!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let selfData = dictionary["self"] as? [String:Any]{
			test = Episodes_Self(fromDictionary: selfData)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if test != nil{
			dictionary["self"] = self.toDictionary()
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         test = aDecoder.decodeObject(forKey: "self") as? Episodes_Self

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if test != nil{
			aCoder.encode(self, forKey: "self")
		}

	}

}
