//
//	Shows_RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Shows_RootClass : NSObject, NSCoding{

	var links : Shows_Link!
	var externals : Shows_External!
	var genres : [String]!
	var id : Int!
	var image : Shows_Image!
	var language : String!
	var name : String!
	var network : Shows_Network!
	var officialSite : AnyObject!
	var premiered : String!
	var rating : Shows_Rating!
	var runtime : Int!
	var schedule : Shows_Schedule!
	var status : String!
	var summary : String!
	var type : String!
	var updated : Int!
	var url : String!
	var webChannel : AnyObject!
	var weight : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let linksData = dictionary["_links"] as? [String:Any]{
			links = Shows_Link(fromDictionary: linksData)
		}
		if let externalsData = dictionary["externals"] as? [String:Any]{
			externals = Shows_External(fromDictionary: externalsData)
		}
		genres = dictionary["genres"] as? [String]
		id = dictionary["id"] as? Int
		if let imageData = dictionary["image"] as? [String:Any]{
			image = Shows_Image(fromDictionary: imageData)
		}
		language = dictionary["language"] as? String
		name = dictionary["name"] as? String
		if let networkData = dictionary["network"] as? [String:Any]{
			network = Shows_Network(fromDictionary: networkData)
		}
		officialSite = dictionary["officialSite"] as? AnyObject
		premiered = dictionary["premiered"] as? String
		if let ratingData = dictionary["rating"] as? [String:Any]{
			rating = Shows_Rating(fromDictionary: ratingData)
		}
		runtime = dictionary["runtime"] as? Int
		if let scheduleData = dictionary["schedule"] as? [String:Any]{
			schedule = Shows_Schedule(fromDictionary: scheduleData)
		}
		status = dictionary["status"] as? String
		summary = dictionary["summary"] as? String
		type = dictionary["type"] as? String
		updated = dictionary["updated"] as? Int
		url = dictionary["url"] as? String
		webChannel = dictionary["webChannel"] as? AnyObject
		weight = dictionary["weight"] as? Int
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
		if externals != nil{
			dictionary["externals"] = externals.toDictionary()
		}
		if genres != nil{
			dictionary["genres"] = genres
		}
		if id != nil{
			dictionary["id"] = id
		}
		if image != nil{
			dictionary["image"] = image.toDictionary()
		}
		if language != nil{
			dictionary["language"] = language
		}
		if name != nil{
			dictionary["name"] = name
		}
		if network != nil{
			dictionary["network"] = network.toDictionary()
		}
		if officialSite != nil{
			dictionary["officialSite"] = officialSite
		}
		if premiered != nil{
			dictionary["premiered"] = premiered
		}
		if rating != nil{
			dictionary["rating"] = rating.toDictionary()
		}
		if runtime != nil{
			dictionary["runtime"] = runtime
		}
		if schedule != nil{
			dictionary["schedule"] = schedule.toDictionary()
		}
		if status != nil{
			dictionary["status"] = status
		}
		if summary != nil{
			dictionary["summary"] = summary
		}
		if type != nil{
			dictionary["type"] = type
		}
		if updated != nil{
			dictionary["updated"] = updated
		}
		if url != nil{
			dictionary["url"] = url
		}
		if webChannel != nil{
			dictionary["webChannel"] = webChannel
		}
		if weight != nil{
			dictionary["weight"] = weight
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         links = aDecoder.decodeObject(forKey: "_links") as? Shows_Link
         externals = aDecoder.decodeObject(forKey: "externals") as? Shows_External
         genres = aDecoder.decodeObject(forKey: "genres") as? [String]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? Shows_Image
         language = aDecoder.decodeObject(forKey: "language") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         network = aDecoder.decodeObject(forKey: "network") as? Shows_Network
         officialSite = aDecoder.decodeObject(forKey: "officialSite") as? AnyObject
         premiered = aDecoder.decodeObject(forKey: "premiered") as? String
         rating = aDecoder.decodeObject(forKey: "rating") as? Shows_Rating
         runtime = aDecoder.decodeObject(forKey: "runtime") as? Int
         schedule = aDecoder.decodeObject(forKey: "schedule") as? Shows_Schedule
         status = aDecoder.decodeObject(forKey: "status") as? String
         summary = aDecoder.decodeObject(forKey: "summary") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         updated = aDecoder.decodeObject(forKey: "updated") as? Int
         url = aDecoder.decodeObject(forKey: "url") as? String
         webChannel = aDecoder.decodeObject(forKey: "webChannel") as? AnyObject
         weight = aDecoder.decodeObject(forKey: "weight") as? Int

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
		if externals != nil{
			aCoder.encode(externals, forKey: "externals")
		}
		if genres != nil{
			aCoder.encode(genres, forKey: "genres")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if image != nil{
			aCoder.encode(image, forKey: "image")
		}
		if language != nil{
			aCoder.encode(language, forKey: "language")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if network != nil{
			aCoder.encode(network, forKey: "network")
		}
		if officialSite != nil{
			aCoder.encode(officialSite, forKey: "officialSite")
		}
		if premiered != nil{
			aCoder.encode(premiered, forKey: "premiered")
		}
		if rating != nil{
			aCoder.encode(rating, forKey: "rating")
		}
		if runtime != nil{
			aCoder.encode(runtime, forKey: "runtime")
		}
		if schedule != nil{
			aCoder.encode(schedule, forKey: "schedule")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}
		if summary != nil{
			aCoder.encode(summary, forKey: "summary")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if updated != nil{
			aCoder.encode(updated, forKey: "updated")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if webChannel != nil{
			aCoder.encode(webChannel, forKey: "webChannel")
		}
		if weight != nil{
			aCoder.encode(weight, forKey: "weight")
		}

	}

}