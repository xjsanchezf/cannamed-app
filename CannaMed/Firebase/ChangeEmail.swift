//
//  ChangeEmail.swift
//  CannaMed
//
//  Created by tip on 12/6/19.
//  Copyright © 2019 Toulouse Lautrec. All rights reserved.
//

import UIKit
import Firebase

class ChangeEmail: UIViewController {
    
    @IBOutlet weak var changeEmail: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeEmailPressed(_ sender: UIButton) {
        
        Auth.auth().currentUser?.updateEmail(to: changeEmail.text!) { (error) in
            if error != nil {
                print(error!)
            } else {
                print("El correo se ha cambiado con éxito!")
                self.performSegue(withIdentifier: "fromEmailToEdit", sender: self)
            }
        }
    }

}
