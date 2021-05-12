//
//  InputVC.swift
//  DogYears
//
//  Created by C. Jordan Ball III on 5/10/21.
//

import UIKit

class InputVC: UIViewController {

    var appBrain = AppBrain();
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var ageDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageDisplay.text = "?";
    }

    @IBAction func stepIt(_ sender: UIStepper) {
        appBrain.setDogAge(Int(sender.value));
        ageDisplay.text = Int(sender.value).description;
    }
    
    
    @IBAction func checkIt(_ sender: UIButton) {
        performSegue(withIdentifier: "showPups", sender: self)
    }
    
    func resetPage() -> Void {
        ageDisplay.text = "?";
        appBrain.setDogAge(0);
        stepper.value = Double(appBrain.getDogAge());
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showPups") {
            let destinationVC = segue.destination as! ResultVC;
            destinationVC.pupAge = appBrain.getDogAge();
            resetPage();
        }
    }
}

