//
//  LoginViewController.swift
//  causerie F
//
//  Created by Shubham Nanda on 01/10/23.
//

import UIKit
import CLTypingLabel
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextfield.text = k.loginScreen
    }

    @IBOutlet weak var loginTextfield: CLTypingLabel!
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
  
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
              
                if let e = error {
                    
                    self.passwordTextfield.text = e.localizedDescription
                
                } else{
                    self.performSegue(withIdentifier: k.loginSegue, sender: self)
                }
              
            }
        }
        
    }
    
  
}
