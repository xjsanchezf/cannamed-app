//
//  RegisterViewController.swift
//  CannaMed
//
//  Created by tip on 12/4/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailPaciente: UITextField!
    @IBOutlet weak var passwordPaciente: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        guard let email = emailPaciente.text, let pass = passwordPaciente.text else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("El usuario se ha registrado con éxito!")
            }
        }
    }
    
}