//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by David Bueno on 4/5/21.
//

import UIKit
import FirebaseAuth

enum ProviderType: String {
    case basic
}

class HomeViewController: UIViewController {

    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    @IBOutlet weak var closeSessionButton: UIButton!
    
    //constantes para email y proveedor
    private let email: String
    private let provider: ProviderType
    
    
    init(email:String, provider: ProviderType) {
        self.email = email
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Inicio"
        
        emailLabel.text =  email
        providerLabel.text = provider.rawValue
    }
    

    @IBAction func closeSessionButtonAction(_ sender: Any) {
        
        //para detectar con que proveedor nos hemos autenticado
        
        switch provider {
        case .basic:
            do{
               try Auth.auth().signOut()
                //Si se realiza correctamente se va a la pantalla anterior
                navigationController?.popViewController(animated: true)
                
            }catch{
                //se ha producido un error
            }
            
        }
    }
    
}
