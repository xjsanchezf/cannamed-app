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
    
    @IBOutlet weak var forgotPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        
        Auth.auth().sendPasswordReset(withEmail: forgotPassword.text!) { (error) in
            if error != nil {
                print(error!)
            } else {
                print("Correo enviado con éxito!")
                self.performSegue(withIdentifier: "emailSent", sender: self)
            }
        }
    }


}
