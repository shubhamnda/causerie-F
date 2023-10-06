//
//  ViewController.swift
//  causerie F
//
//  Created by Shubham Nanda on 01/10/23.
//

import UIKit
import CLTypingLabel
import FirebaseCore

import FirebaseAuth
class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = k.appName
        
        
    }

    
}

