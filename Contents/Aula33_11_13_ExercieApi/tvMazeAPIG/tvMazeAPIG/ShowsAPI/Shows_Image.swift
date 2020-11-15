//
//	Shows_Image.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Shows_Image : NSObject, NSCoding{

	var medium : String!
	var original : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		medium = dictionary["medium"] as? String
		original = dictionary["original"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if medium != nil{
			dictionary["medium"] = medium
		}
		if original != nil{
			dictionary["original"] = original
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         medium = aDecoder.decodeObject(forKey: "medium") as? String
         original = aDecoder.decodeObject(forKey: "original") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if medium != nil{
			aCoder.encode(medium, forKey: "medium")
		}
		if original != nil{
			aCoder.encode(original, forKey: "original")
		}

	}

}