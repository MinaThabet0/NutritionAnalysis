//
//  MockNutritionDetail.swift
//  NutritionAnalysisTests
//
//  Created by Mina Thabet on 30/03/2021.
//

import Foundation
@testable import NutritionAnalysis

extension NutritionDetailed {
    static func withMock(calories: Int = 1772,totalWeight: Double = 478.49) -> NutritionDetailed{
        return NutritionDetailed(calories: calories, totalWeight: totalWeight)
    }
}
