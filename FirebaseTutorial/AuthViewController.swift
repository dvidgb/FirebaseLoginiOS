//
//  AuthViewController.swift
//  FirebaseTutorial
//
//  Created by David Bueno on 4/5/21.
//

import UIKit

class AuthViewController: UIViewController {

   
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Autenticación"
    }
    
    
    //Actions
    
    @IBAction func signUpButtonAction(_ sender: Any) {
    }
    
    
    
    @IBAction func logInButtonAction(_ sender: Any) {
    }
    

}

