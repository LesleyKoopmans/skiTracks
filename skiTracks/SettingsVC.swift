//
//  SettingsVC.swift
//  skiTracks
//
//  Created by Lesley on 31-12-16.
//  Copyright © 2016 Lesley. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //OUTLETS
    @IBOutlet weak var usernameField: RoundTextField!
    @IBOutlet weak var profileImageView: RoundImage!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            profileImageView.image = image
        } else {
            createAlertController(title: "Fout", message: "Selecteer een foto en probeer opnieuw", alertTitle: "OK")
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func profileImagePressed(_ sender: UITapGestureRecognizer) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func updateProfileBtnPressed(_ sender: Any) {
    }
    
}
