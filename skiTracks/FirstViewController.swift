//
//  FirstViewController.swift
//  skiTracks
//
//  Created by Lesley on 31-12-16.
//  Copyright © 2016 Lesley. All rights reserved.
//

import UIKit
import FirebaseAuth

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        guard FIRAuth.auth()?.currentUser != nil else {
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
            
        }
    }
    
}

