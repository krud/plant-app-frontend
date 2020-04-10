//import Foundation
//
//final class User: Codable {
//    
//    var id: UUID?
//    var name: String
//    var username: String
//    var email: String
//    var passwordHash: String
////    var plants: [Plant]
//    
//    init(id: UUID? = nil, name: String, username: String, email: String, passwordHash: String) {
//        self.id = id
//        self.name = name
//        self.username = username
//        self.email = email
//        self.passwordHash = passwordHash
//    }
//}

//extension User: ModelUser {
//    static let usernameKey = \User.$username
//    static let passwordHashKey = \User.$passwordHash
//
//    func verify(password: String) throws -> Bool {
//        try Bcrypt.verify(password, created: self.passwordHash)
//    }
//}
