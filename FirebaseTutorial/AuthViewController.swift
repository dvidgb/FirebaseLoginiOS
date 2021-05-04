//
//  AuthViewController.swift
//  FirebaseTutorial
//
//  Created by David Bueno on 4/5/21.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth


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
        //comprobamos que se ha introduccido un email y una password
        if let email = emailTextField.text , let password = passwordTextField.text{
            
            //para registrar el email y contraseña en firebase
            Auth.auth().createUser(withEmail: email, password: password){
                
            (result,error) in
                
                //comprobamos si el resultado es nulo y el error es nulo
                
                if let result = result, error == nil {
                    
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                }else{
                    //en caso de que haya un error creo un alert
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController,animated: true,completion: nil)
                }
            }
        }//fin
    }//fin funcion action singUp
    
    
    
    @IBAction func logInButtonAction(_ sender: Any) {
        
        //comprobamos que se ha introduccido un email y una password
        if let email = emailTextField.text , let password = passwordTextField.text{
            
            //para registrar el email y contraseña en firebase
            Auth.auth().signIn(withEmail: email, password: password){
                
            (result,error) in
                
                //comprobamos si el resultado es nulo y el error es nulo
                
                if let result = result, error == nil {
                    
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                }else{
                    //en caso de que haya un error creo un alert
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController,animated: true,completion: nil)
                }
            }
        }//fin
    }
    

}

