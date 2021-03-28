//
//  NewRecipeViewController.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 28/03/2021.
//

import UIKit

class NewRecipeViewController: UIViewController {
    
    //MARK:- IBOutlet
    @IBOutlet weak var textViewContainer: UIView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var analyzeButton: UIButton!

    //MARK:- Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initView()
        //textView.text.lines
    }
    
    @IBAction func analyzeAction(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK:- Helpers
extension NewRecipeViewController {
    func initView() {
        setSetupTextViewContainer()
        setupAnalyzeBtn()
    }
    
    func setSetupTextViewContainer() {
        textViewContainer.setBorder(color: UIColor.systemGray, width: 1, corderRadius: 10)
    }
    
    func setupAnalyzeBtn() {
        analyzeButton.setCornerRadius(corderRadius: 10)
    }
}
