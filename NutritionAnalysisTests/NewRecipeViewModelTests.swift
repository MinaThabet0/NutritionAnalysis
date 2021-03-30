//
//  NewRecipeViewModelTests.swift
//  NutritionAnalysisTests
//
//  Created by Mina Thabet on 30/03/2021.
//

import XCTest
@testable import NutritionAnalysis

class NewRecipeViewModelTests: XCTestCase {
    
    func testSuccessFetchData() {
        let expectedModel = NutritionDetailed.withMock()
        
        let service = MockService(mockData: expectedModel)
        
        let viewModel = NewRecipeViewModel(appServerClient: service)
        
        viewModel.ingredient = "1 cup rice\n10 oz chickpeas"
        viewModel.analyze()
        
        XCTAssertTrue(!viewModel.showLoading.value)
        XCTAssertEqual(viewModel.ingredient?.lines, ["1 cup rice","10 oz chickpeas"])
        XCTAssertTrue((viewModel.nutritionDetailedViewModel != nil))
    }
    
    func testNilFetchData() {
        let expectedModel: NutritionDetailed? = nil
        
        let service = MockService(mockData: expectedModel)
        
        let viewModel = NewRecipeViewModel(appServerClient: service)
        
        viewModel.analyze()
        
        XCTAssertTrue(!viewModel.showLoading.value)
        XCTAssertNil(viewModel.nutritionDetailedViewModel)
    }

}
