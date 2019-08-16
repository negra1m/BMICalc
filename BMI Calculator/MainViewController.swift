//
//  MainViewController.swift
//  BMI Calculator
//
//  Created by Vinicius Negrao de Menezes on 12/08/19.
//  Copyright © 2019 VN. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Outlets Declarations
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var lbErrorMessage: UILabel!
    
    @IBAction func checkUserName(_ sender: Any) {

        if(!tfUserName.text!.isEmpty){
            lbErrorMessage.isHidden = false
            let tab = (self.storyboard?.instantiateViewController(withIdentifier: "tabBar"))!
            self.present(tab, animated: true, completion: nil)
        }
        else{
            lbErrorMessage.text = "Please, insert your name to continue."
            lbErrorMessage.isHidden = false
        }
    }
    @IBAction func clearErrorMessage(_ sender: Any) {
        lbErrorMessage.isHidden = true
    }

}
