//
//	Episodes_Episodes.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Episodes_Episodes : NSObject, NSCoding{

	var links : Episodes_Link!
	var airdate : String!
	var airstamp : String!
	var airtime : String!
	var id : Int!
	var image : AnyObject!
	var name : String!
	var number : Int!
	var runtime : Int!
	var season : Int!
	var summary : String!
	var type : String!
	var url : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let linksData = dictionary["_links"] as? [String:Any]{
			links = Episodes_Link(fromDictionary: linksData)
		}
		airdate = dictionary["airdate"] as? String
		airstamp = dictionary["airstamp"] as? String
		airtime = dictionary["airtime"] as? String
		id = dictionary["id"] as? Int
		image = dictionary["image"] as? AnyObject
		name = dictionary["name"] as? String
		number = dictionary["number"] as? Int
		runtime = dictionary["runtime"] as? Int
		season = dictionary["season"] as? Int
		summary = dictionary["summary"] as? String
		type = dictionary["type"] as? String
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if links != nil{
			dictionary["_links"] = links.toDictionary()
		}
		if airdate != nil{
			dictionary["airdate"] = airdate
		}
		if airstamp != nil{
			dictionary["airstamp"] = airstamp
		}
		if airtime != nil{
			dictionary["airtime"] = airtime
		}
		if id != nil{
			dictionary["id"] = id
		}
		if image != nil{
			dictionary["image"] = image
		}
		if name != nil{
			dictionary["name"] = name
		}
		if number != nil{
			dictionary["number"] = number
		}
		if runtime != nil{
			dictionary["runtime"] = runtime
		}
		if season != nil{
			dictionary["season"] = season
		}
		if summary != nil{
			dictionary["summary"] = summary
		}
		if type != nil{
			dictionary["type"] = type
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         links = aDecoder.decodeObject(forKey: "_links") as? Episodes_Link
         airdate = aDecoder.decodeObject(forKey: "airdate") as? String
         airstamp = aDecoder.decodeObject(forKey: "airstamp") as? String
         airtime = aDecoder.decodeObject(forKey: "airtime") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         number = aDecoder.decodeObject(forKey: "number") as? Int
         runtime = aDecoder.decodeObject(forKey: "runtime") as? Int
         season = aDecoder.decodeObject(forKey: "season") as? Int
         summary = aDecoder.decodeObject(forKey: "summary") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         url = aDecoder.decodeObject(forKey: "url") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if links != nil{
			aCoder.encode(links, forKey: "_links")
		}
		if airdate != nil{
			aCoder.encode(airdate, forKey: "airdate")
		}
		if airstamp != nil{
			aCoder.encode(airstamp, forKey: "airstamp")
		}
		if airtime != nil{
			aCoder.encode(airtime, forKey: "airtime")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if image != nil{
			aCoder.encode(image, forKey: "image")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if number != nil{
			aCoder.encode(number, forKey: "number")
		}
		if runtime != nil{
			aCoder.encode(runtime, forKey: "runtime")
		}
		if season != nil{
			aCoder.encode(season, forKey: "season")
		}
		if summary != nil{
			aCoder.encode(summary, forKey: "summary")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}

	}

}