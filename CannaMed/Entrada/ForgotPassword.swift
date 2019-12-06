//
//  ForgotPassword.swift
//  CannaMed
//
//  Created by tip on 12/6/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class ForgotPassword: UIViewController {
    
    @IBOutlet weak var emailForgotPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressedForgotPassword(_ sender: UIButton) {
        
        Auth.auth().sendPasswordReset(withEmail: emailForgotPassword.text!){ error in
            if error != nil {
                print(error!)
            } else {
                print("An user forgot its password.")
                self.performSegue(withIdentifier: "emailSent", sender: self)
            }
        }
    }
    
}
