//
//  FirstViewController.swift
//  BMI Calculator
//
//  Created by Vinicius Negrao de Menezes on 09/08/19.
//  Copyright © 2019 VN. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var lbError: UILabel!
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultViewController
        vc?.lbResult.text! = result.toString()
    }

    @IBAction func calcBMI(_ sender: Any) {
        if (tfHeight.text?.isEmpty ?? false && tfWeight.text?.isEmpty ?? false){
            lbError.text = "Please, fill the fields above to procceed"
        }else{
            _ = calc(height: Double(tfHeight!.text!)!, weight: Double(tfWeight!.text!)!)
        }
    }
    
    
    func calc(height: Double, weight: Double){
        let bmi = weight / pow(height, 2)
        result = "Your BMI is: \(bmi)"
        
    }
    
    func callResultView(bmi: Double){
        
    }
}

