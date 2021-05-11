//
//  InputVC.swift
//  DogYears
//
//  Created by C. Jordan Ball III on 5/10/21.
//

import UIKit

class InputVC: UIViewController {

    @IBOutlet weak var ageDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ageDisplay.text = "?";
    }

    @IBAction func stepIt(_ sender: UIStepper) {
        ageDisplay.text = Int(sender.value).description;
    }
    
    
    @IBAction func checkIt(_ sender: UIButton) {
    }
    
}

