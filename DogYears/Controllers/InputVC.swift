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
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var ageDisplay: UILabel!
    @IBOutlet weak var ageQuery: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkButton.layer.cornerRadius = 10.0;
        checkButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false);
        UIDevice.current.beginGeneratingDeviceOrientationNotifications();
        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: UIDevice.orientationDidChangeNotification, object: nil);
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self);
    }
    
    @objc func deviceOrientationDidChange() {
        if (UIDevice.current.orientation.isLandscape) {
            ageDisplay.text = " ";
        }
        if (UIDevice.current.orientation.isPortrait) {
            ageDisplay.text = "?";
        }
    }

    @IBAction func stepIt(_ sender: UIStepper) {
        appBrain.setDogAge(Int(sender.value));
        ageDisplay.text = Int(sender.value).description;
        if (UIDevice.current.orientation.isLandscape) {
            ageQuery.text = "";
        }
    }
    
    @IBAction func checkIt(_ sender: UIButton) {
        performSegue(withIdentifier: "showPups", sender: self)
    }
    
    func resetPage() -> Void {
        ageDisplay.text = UIDevice.current.orientation.isLandscape ? " " : "?";
        appBrain.setDogAge(0);
        stepper.value = Double(appBrain.getDogAge());
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showPups") {
            self.ageQuery.text = "How Old is Your Dog?"
            let destinationVC = segue.destination as! ResultVC;
            destinationVC.pupAge = appBrain.getDogAge();
            resetPage();
        }
    }
}

