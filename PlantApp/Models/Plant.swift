////import Foundation
////
////final class Plant: Codable {
////    var id: UUID?
////    var name: String
////    var commonName: String
////    var latinName: String
////    var microEnv: String
////    var alive: Bool
////
////    init(id: UUID? = nil, name: String, commonName: String, latinName: String, microEnv: String, alive: Bool) {
////        self.id = id
////        self.name = name
////        self.commonName = commonName
////        self.latinName = latinName
////        self.microEnv = microEnv
////        self.alive = alive
////    }
////}
//
//import SwiftUI
//
//struct Plant: Hashable, Codable, Identifiable {
//    var id: UUID
//    var name: String
//    fileprivate var imageName: String
//    var commonName: String
//    var latinName: String
//    var microEnv: String
//    var alive: Bool
//    var isFavorite: Bool
//    var isFeatured: Bool
//    var category: Category
//
//    enum Category: String, CaseIterable, Codable, Hashable {
//        case featured = "Featured"
//        case succulents = "Succulents"
//        case cati = "Cati"
//        case palms = "Indoor Palms"
//    }
//}
//
//extension Plant {
//    var image: Image {
//        ImageStore.shared.image(name: imageName)
//    }
//}
