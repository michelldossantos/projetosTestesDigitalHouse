//
//	Shows_External.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Shows_External : NSObject, NSCoding{

	var imdb : String!
	var thetvdb : Int!
	var tvrage : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		imdb = dictionary["imdb"] as? String
		thetvdb = dictionary["thetvdb"] as? Int
		tvrage = dictionary["tvrage"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if imdb != nil{
			dictionary["imdb"] = imdb
		}
		if thetvdb != nil{
			dictionary["thetvdb"] = thetvdb
		}
		if tvrage != nil{
			dictionary["tvrage"] = tvrage
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         imdb = aDecoder.decodeObject(forKey: "imdb") as? String
         thetvdb = aDecoder.decodeObject(forKey: "thetvdb") as? Int
         tvrage = aDecoder.decodeObject(forKey: "tvrage") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if imdb != nil{
			aCoder.encode(imdb, forKey: "imdb")
		}
		if thetvdb != nil{
			aCoder.encode(thetvdb, forKey: "thetvdb")
		}
		if tvrage != nil{
			aCoder.encode(tvrage, forKey: "tvrage")
		}

	}

}