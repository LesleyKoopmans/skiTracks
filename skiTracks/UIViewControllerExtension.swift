//
//  UIViewControllerExtension.swift
//  skiTracks
//
//  Created by Lesley on 02-01-17.
//  Copyright © 2017 Lesley. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func createAlertController(title: String = "", message: String, alertTitle: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: alertTitle, style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
