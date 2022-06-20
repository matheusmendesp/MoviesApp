//
//  RequestManager.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import Foundation

final class RequestManager {

    static func request<T: Decodable>(_ request: URLRequest, completion: @escaping ((_ result: T?)-> Void)) {
    let task: URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            debugPrint(error)
            completion(nil)
            return
            }
        
        guard let responseData: Data = data else {
            completion(nil)
            return
            }
        
        let object: T? = try? JSONDecoder().decode(T.self, from: responseData)
        completion(object)
        }
        
        task.resume()
    }
}
