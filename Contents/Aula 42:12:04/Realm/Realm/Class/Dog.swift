//
//  Dog.swift
//  Realm
//
//  Created by Michel dos Santos on 04/12/20.
//

import Foundation
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
