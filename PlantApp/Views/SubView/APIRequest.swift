//
//  APIRequest.swift
//  PlantApp
//
//  Created by Kelly Rudnicki on 3/2/20.
//  Copyright © 2020 Kelly Rudnicki. All rights reserved.
//

//import Foundation
//
//enum APIError: Error {
//    case responseProblem
//    case decodingProblem
//    case encodingProblem
//}
//
//struct APIRequest {
//    let resourceURL: URL
////    let endpoint: String = ""
//
//    init(endpoint: String) {
//        let resourceString = "http://localhost:8080/\(endpoint)"
//        guard let resourceURL = URL(string: resourceString) else {fatalError()}
//        self.resourceURL = resourceURL
//    }
//
//    func checkDetails(_ loginUser:User, completion: @escaping(Result<User, APIError>) -> Void){
//        do {
//            var urlRequest = URLRequest(url: resourceURL)
//            urlRequest.httpMethod = "POST"
//            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//            urlRequest.httpBody = try JSONEncoder().encode(loginUser)
//        }catch{
//            completion(.failure(.encodingProblem))
//        }
//    }
    
//    func save (_ plantToSave:Plant, completion: @escaping(Result<Plant, APIError>) -> Void) {
//        do {
//            var urlRequest = URLRequest(url: resourceURL)
//            urlRequest.httpMethod = "POST"
//            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//            urlRequest.httpBody = try JSONEncoder().encode(plantToSave)
//
//            let dataTask = URLSession.shared.dataTask(with: urlRequest) {data, response, _ in
//                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else {completion(.failure(.responseProblem))
//                               return
//                       }
//                do {
//                    let plantData = try JSONDecoder().decode(Plant.self, from: jsonData)
//                    completion(.success(plantData))
//                }catch{
//                    completion(.failure(.decodingProblem))
//                }
//            }
//            dataTask.resume()
//        }catch{
//            completion(.failure(.encodingProblem))
//        }
//    }
//}
