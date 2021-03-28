//
//  Config.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 27/03/2021.
//

import Foundation

enum EdamamConfig {
    static let baseUrl = "https://api.edamam.com/api/"
    static let apiKey = "5c818ab868330e96310822563362691f"
    static let appId = "bd16a821"
    static let method = "nutrition-details"
    static let title = "Recipe"
}

enum Params {
    static let apiKey = "api_key"
    static let appId = "app_id"
    static let title = "title"
    static let ingr = "ingr"
}