//
//  SignIn.swift
//  CannaMed
//
//  Created by tip on 12/6/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class SignIn: UIViewController {
    
    @IBOutlet weak var emailSignIn: UITextField!
    
    @IBOutlet weak var passwordSignIn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInPressed(_ sender: UIButton) {
        
        Auth.auth().signIn(withEmail: emailSignIn.text!, password: passwordSignIn.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("Sign In!")
                self.performSegue(withIdentifier: "fromSignInToHome", sender: self)
            }
        }
    }
}
