/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Nutrients : Codable {
	let pROCNT : NutrientQuantity?
	let fAT : NutrientQuantity?
	let eNERC_KCAL : NutrientQuantity?
	let cA : NutrientQuantity?
	let fE : NutrientQuantity?
	let mG : NutrientQuantity?
	let p : NutrientQuantity?
	let k : NutrientQuantity?
	let nA : NutrientQuantity?
	let zN : NutrientQuantity?
	let vITD : NutrientQuantity?
	let vITC : NutrientQuantity?
	let tHIA : NutrientQuantity?
	let rIBF : NutrientQuantity?
	let nIA : NutrientQuantity?
	let vITB6A : NutrientQuantity?
	let fOL : NutrientQuantity?
	let vITB12 : NutrientQuantity?
	let cHOLE : NutrientQuantity?
	let fASAT : NutrientQuantity?
	let fAMS : NutrientQuantity?
	let fAPU : NutrientQuantity?

	enum CodingKeys: String, CodingKey {

		case pROCNT = "PROCNT"
		case fAT = "FAT"
		case eNERC_KCAL = "ENERC_KCAL"
		case cA = "CA"
		case fE = "FE"
		case mG = "MG"
		case p = "P"
		case k = "K"
		case nA = "NA"
		case zN = "ZN"
		case vITD = "VITD"
		case vITC = "VITC"
		case tHIA = "THIA"
		case rIBF = "RIBF"
		case nIA = "NIA"
		case vITB6A = "VITB6A"
		case fOL = "FOL"
		case vITB12 = "VITB12"
		case cHOLE = "CHOLE"
		case fASAT = "FASAT"
		case fAMS = "FAMS"
		case fAPU = "FAPU"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		pROCNT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .pROCNT)
		fAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAT)
		eNERC_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .eNERC_KCAL)
		cA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cA)
		fE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fE)
		mG = try values.decodeIfPresent(NutrientQuantity.self, forKey: .mG)
		p = try values.decodeIfPresent(NutrientQuantity.self, forKey: .p)
		k = try values.decodeIfPresent(NutrientQuantity.self, forKey: .k)
		nA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nA)
		zN = try values.decodeIfPresent(NutrientQuantity.self, forKey: .zN)
		vITD = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITD)
		vITC = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITC)
		tHIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .tHIA)
		rIBF = try values.decodeIfPresent(NutrientQuantity.self, forKey: .rIBF)
		nIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nIA)
		vITB6A = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB6A)
		fOL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fOL)
		vITB12 = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB12)
		cHOLE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOLE)
		fASAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fASAT)
		fAMS = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAMS)
		fAPU = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAPU)
	}

}