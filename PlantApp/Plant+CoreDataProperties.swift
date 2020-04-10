//
//  Plant+CoreDataProperties.swift
//  PlantApp
//
//  Created by Kelly Rudnicki on 3/4/20.
//  Copyright © 2020 Kelly Rudnicki. All rights reserved.
//
//

import Foundation
import CoreData


extension Plant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Plant> {
        return NSFetchRequest<Plant>(entityName: "Plant")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var status: String?

}
