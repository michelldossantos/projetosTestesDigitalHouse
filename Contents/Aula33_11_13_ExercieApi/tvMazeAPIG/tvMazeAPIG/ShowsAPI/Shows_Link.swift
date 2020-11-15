//
//	Shows_Link.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Shows_Link : NSObject, NSCoding{

	var previousepisode : Shows_Previousepisode!
    var test : Shows_Previousepisode!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let previousepisodeData = dictionary["previousepisode"] as? [String:Any]{
			previousepisode = Shows_Previousepisode(fromDictionary: previousepisodeData)
		}
		if let selfData = dictionary["self"] as? [String:Any]{
            test = Shows_Previousepisode(fromDictionary: selfData)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if previousepisode != nil{
			dictionary["previousepisode"] = previousepisode.toDictionary()
		}
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
         previousepisode = aDecoder.decodeObject(forKey: "previousepisode") as? Shows_Previousepisode
         test = aDecoder.decodeObject(forKey: "self") as? Shows_Previousepisode

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if previousepisode != nil{
			aCoder.encode(previousepisode, forKey: "previousepisode")
		}
		if test != nil{
			aCoder.encode(self, forKey: "self")
		}

	}

}
