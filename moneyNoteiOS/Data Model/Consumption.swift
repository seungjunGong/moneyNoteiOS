//
//  Consumption.swift
//  moneyNoteiOS
//
//  Created by ho on 2023/01/12.
//

import Foundation
import RealmSwift

class Consumption: Object {
    @objc dynamic var product : String = ""
    @objc dynamic var price : Int = 0
    @objc dynamic var date : String = ""
}
