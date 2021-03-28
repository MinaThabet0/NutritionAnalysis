//
//  String+Extension.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 28/03/2021.
//

import Foundation

extension String {
    var lines: [String] {
        return self.components(separatedBy: "\n")
    }
}
