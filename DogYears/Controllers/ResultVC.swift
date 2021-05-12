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
    override func viewDidLoad() {
        super.viewDidLoad()
        displayAge.text = String(pupAge!);
        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeUp(_ sender: UIButton) {
        self.dismiss(animated:true);
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
