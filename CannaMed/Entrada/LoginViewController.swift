//
//  LoginViewController.swift
//  CannaMed
//
//  Created by tip on 12/4/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailPaciente: UITextField!
    @IBOutlet weak var passwordPaciente: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailPaciente.text!, password: passwordPaciente.text!){
            (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("Login satisfactorio!")
                self.performSegue(withIdentifier: "FromLoginToHome", sender: self)
            }
        }
    }
    
}
