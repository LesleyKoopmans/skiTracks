//
//  LoginVC.swift
//  skiTracks
//
//  Created by Lesley on 31-12-16.
//  Copyright © 2016 Lesley. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController, UITextFieldDelegate {
    
    //OUTLETS
    @IBOutlet weak var emailField: RoundTextField!
    @IBOutlet weak var passwordField: RoundTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        if let email = emailField.text, let pass = passwordField.text, (email.characters.count > 0 && pass.characters.count > 0) {
            
            AuthService.instance.login(email: email, password: pass, onComplete: { (errMsg: String?, data: AnyObject?) in
                
                self.dismiss(animated: true, completion: nil)
                guard errMsg == nil else {
                    let alert = UIAlertController(title: "Error Authenticating", message: errMsg, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    return
                }
                
                self.dismiss(animated: true, completion: nil)
            })
            
        } else {
            let alert = UIAlertController(title: "Username and Password required", message: "You must enter both a username and password  ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
