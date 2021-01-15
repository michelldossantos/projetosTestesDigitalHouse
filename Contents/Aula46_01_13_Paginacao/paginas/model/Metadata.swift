//
//	Metadata.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Metadata : NSObject, NSCoding{

	var page : Int!
	var per : Int!
	var total : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		page = dictionary["page"] as? Int
		per = dictionary["per"] as? Int
		total = dictionary["total"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if page != nil{
			dictionary["page"] = page
		}
		if per != nil{
			dictionary["per"] = per
		}
		if total != nil{
			dictionary["total"] = total
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         page = aDecoder.decodeObject(forKey: "page") as? Int
         per = aDecoder.decodeObject(forKey: "per") as? Int
         total = aDecoder.decodeObject(forKey: "total") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if page != nil{
			aCoder.encode(page, forKey: "page")
		}
		if per != nil{
			aCoder.encode(per, forKey: "per")
		}
		if total != nil{
			aCoder.encode(total, forKey: "total")
		}

	}

}