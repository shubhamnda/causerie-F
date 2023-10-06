//
//  StartViewController.swift
//  causerie F
//
//  Created by Shubham Nanda on 01/10/23.
//

import UIKit
import CLTypingLabel

class StartViewController: UIViewController {
    
    @IBOutlet weak var startTextField: CLTypingLabel!
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        startTextField.text = k.start
        
      
    }
    


}
