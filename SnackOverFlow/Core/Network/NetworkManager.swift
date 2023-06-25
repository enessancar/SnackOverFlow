//
//  NetworkManager.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 25.06.2023.
//

import Foundation
import Alamofire

struct NetworkConfig {
    let baseUrl: String
}

protocol INetworkManager {
    func fetch<T: Decodable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
    var config: NetworkConfig { get set }
}

extension NetworkManager {
    static let networkManager: INetworkManager = NetworkManager(config: NetworkConfig(baseUrl: NetworkPath.baseUrlRegres))
}

class NetworkManager: INetworkManager {
    internal var config: NetworkConfig
    init(config: NetworkConfig) {
        self.config = config
    }
    
    func fetch<T: Decodable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?  {
        let dataRequest = AF.request("\(config.baseUrl)\(path.rawValue)",
                                     method: method)
            .validate()
            .serializingDecodable(T.self)
        
        let result = await dataRequest.response
        if (result.error != nil) {
            print("ERROR: \(String(describing: result.error))")
        }
        return result.value
    }
}
 
enum NetworkPath: String {
    case users = "api/users"
    
    static let baseUrlRegres: String = "https://regres.in/"
}
 
