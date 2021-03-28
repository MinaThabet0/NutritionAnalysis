//
//  ApiNetworkManager.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 28/03/2021.
//

import Foundation
import Moya

protocol ApiNetworkProtocol {
    func nutritionDetails(ingr: [String] ,completionHandler: @escaping (Result<NutritionDetailed, Error>)->() )
}

class ApiNetworkManager {
    let provider = MoyaProvider<EdamamApi>(plugins: [NetworkLoggerPlugin()])
}


extension ApiNetworkManager: ApiNetworkProtocol {
    func nutritionDetails(ingr: [String], completionHandler: @escaping (Result<NutritionDetailed, Error>) -> ()) {
        provider.request(.nutritionDetails(ingr: ingr)) { result in
            switch result {
            case .success(let response):
                do {
                    let nutritionDetail = try JSONDecoder().decode(NutritionDetailed.self, from: response.data)
                    completionHandler(.success(nutritionDetail))
                } catch let error {
                    // handle error
                    completionHandler(.failure(error))
                }
            case .failure(let error):
                // handle error
                 completionHandler(.failure(error))
            }
        }
    }
    
    
}
