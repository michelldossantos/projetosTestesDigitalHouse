//
//	Season_Season.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Season_Season : NSObject, NSCoding{

	var links : Season_Link!
	var endDate : String!
	var episodeOrder : Int!
	var id : Int!
	var image : AnyObject!
	var name : String!
	var network : Season_Network!
	var number : Int!
	var premiereDate : String!
	var summary : String!
	var url : String!
	var webChannel : AnyObject!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let linksData = dictionary["_links"] as? [String:Any]{
			links = Season_Link(fromDictionary: linksData)
		}
		endDate = dictionary["endDate"] as? String
		episodeOrder = dictionary["episodeOrder"] as? Int
		id = dictionary["id"] as? Int
		image = dictionary["image"] as? AnyObject
		name = dictionary["name"] as? String
		if let networkData = dictionary["network"] as? [String:Any]{
			network = Season_Network(fromDictionary: networkData)
		}
		number = dictionary["number"] as? Int
		premiereDate = dictionary["premiereDate"] as? String
		summary = dictionary["summary"] as? String
		url = dictionary["url"] as? String
		webChannel = dictionary["webChannel"] as? AnyObject
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
		if endDate != nil{
			dictionary["endDate"] = endDate
		}
		if episodeOrder != nil{
			dictionary["episodeOrder"] = episodeOrder
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
		if network != nil{
			dictionary["network"] = network.toDictionary()
		}
		if number != nil{
			dictionary["number"] = number
		}
		if premiereDate != nil{
			dictionary["premiereDate"] = premiereDate
		}
		if summary != nil{
			dictionary["summary"] = summary
		}
		if url != nil{
			dictionary["url"] = url
		}
		if webChannel != nil{
			dictionary["webChannel"] = webChannel
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         links = aDecoder.decodeObject(forKey: "_links") as? Season_Link
         endDate = aDecoder.decodeObject(forKey: "endDate") as? String
         episodeOrder = aDecoder.decodeObject(forKey: "episodeOrder") as? Int
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         network = aDecoder.decodeObject(forKey: "network") as? Season_Network
         number = aDecoder.decodeObject(forKey: "number") as? Int
         premiereDate = aDecoder.decodeObject(forKey: "premiereDate") as? String
         summary = aDecoder.decodeObject(forKey: "summary") as? String
         url = aDecoder.decodeObject(forKey: "url") as? String
         webChannel = aDecoder.decodeObject(forKey: "webChannel") as? AnyObject

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
		if endDate != nil{
			aCoder.encode(endDate, forKey: "endDate")
		}
		if episodeOrder != nil{
			aCoder.encode(episodeOrder, forKey: "episodeOrder")
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
		if network != nil{
			aCoder.encode(network, forKey: "network")
		}
		if number != nil{
			aCoder.encode(number, forKey: "number")
		}
		if premiereDate != nil{
			aCoder.encode(premiereDate, forKey: "premiereDate")
		}
		if summary != nil{
			aCoder.encode(summary, forKey: "summary")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if webChannel != nil{
			aCoder.encode(webChannel, forKey: "webChannel")
		}

	}

}