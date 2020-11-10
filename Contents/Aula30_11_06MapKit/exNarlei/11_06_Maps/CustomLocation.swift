//
//  MyLocal.swift
//  11_06_Maps
//
//  Created by Narlei A Moreira on 06/11/20.
//

import Foundation
import MapKit

class CustomLocation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var location: CLLocation?
    var category: String
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees

    init( location title: String, subtitle: String?, category: String) {
        self.latitude = latitude
        self.longitude = longitude
        self.title = title
        self.subtitle = subtitle
        self.category = category
        self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        super.init()
    }
    
}
