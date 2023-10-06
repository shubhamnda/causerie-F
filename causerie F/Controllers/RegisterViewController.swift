//
//  RegisterViewController.swift
//  causerie F
//
//  Created by Shubham Nanda on 01/10/23.
//

import UIKit
import CLTypingLabel
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


      
class RegisterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    self.registerTextField.text = k.RegisterScreen
    }

    @IBOutlet weak var registerTextField: CLTypingLabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
   
        
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.passwordTextField.text = e.localizedDescription
                }
                else {
                    self.performSegue(withIdentifier: k.registerSegue, sender: self)          }
                
            }
            
            
        }
    }
}
