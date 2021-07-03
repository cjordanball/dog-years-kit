//
//  ResultVC.swift
//  DogYears
//
//  Created by C. Jordan Ball III on 5/10/21.
//

import UIKit

class ResultVC: UIViewController {

    var pupAge: Int?
    
    @IBOutlet weak var displayAge: UILabel!

    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayAge.text = String(pupAge!);
        closeButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
        closeButton.layer.cornerRadius = 10;
    }
    
    @IBAction func closeUp(_ sender: UIButton) {
        self.dismiss(animated:true);
    }
}
