//
//  ChangePassword.swift
//  CannaMed
//
//  Created by tip on 12/6/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class ChangePassword: UIViewController {
    
    @IBOutlet weak var changePassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changePasswordPressed(_ sender: UIButton) {
        
        Auth.auth().currentUser?.updatePassword(to: changePassword.text!) { (error) in
            if error != nil {
                print(error!)
            } else {
                print("La contraseña se ha cambiado con éxito!")
                self.performSegue(withIdentifier: "fromPasswordToEdit", sender: self)
            }
        }
    }


}
