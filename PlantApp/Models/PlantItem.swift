////
////  PlantItem.swift
////  PlantApp
////
////  Created by Kelly Rudnicki on 3/4/20.
////  Copyright © 2020 Kelly Rudnicki. All rights reserved.
////
//
//import Foundation
//import CoreData
//
//public class PlantItem:NSManagedObject, Identifiable {
//    @NSManaged public var name: String?
//    @NSManaged public var CommonName: String?
//    @NSManaged public var latinName: String?
////    @NSManaged public var alive: Bool?
//    @NSManaged public var createdAt: Date?
//}
//
//extension PlantItem {
//    static func getAllPlantItems() -> NSFetchRequest<PlantItem> {
//        let request:NSFetchRequest<PlantItem> = PlantItem.fetchRequest() as! NSFetchRequest<PlantItem>
//        let sortDescriptor = NSSortDescriptor(key:"createdAt", ascending: true)
//        
//        request.sortDescriptors = [sortDescriptor]
//        
//        return request
//    }
//}
