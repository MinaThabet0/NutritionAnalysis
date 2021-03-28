//
//  EdamamApi.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 28/03/2021.
//

import Foundation
import Moya


enum EdamamApi {
    case nutritionDetails(ingr: [String])
}


extension EdamamApi: TargetType {
    var baseURL: URL {
        guard let url = URL(string: EdamamConfig.baseUrl) else {
            preconditionFailure("Invalid url")
        }
        return url
    }
    
    var path: String {
        return EdamamConfig.method
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data {
        Data()
    }
    
    var task: Task {
        switch self {
        case .nutritionDetails(let ingr):
            return .requestCompositeParameters(bodyParameters: [Params.title: EdamamConfig.title ,Params.ingr: ingr], bodyEncoding: JSONEncoding.default, urlParameters: [Params.appId: EdamamConfig.appId, Params.apiKey: EdamamConfig.apiKey] )
        }
    }
    
    var headers: [String: String]? {
        nil
    }
}
