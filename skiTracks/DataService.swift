//
//  DataService.swift
//  skiTracks
//
//  Created by Lesley on 03-01-17.
//  Copyright © 2017 Lesley. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseStorage

let FIR_CHILD_USERS = "users"
let FIR_CHILD_IMAGES = "images"

class DataService {
    private static let _instance = DataService()
    
    static var instance: DataService {
        return _instance
    }
    
    var mainRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
    var mainStorageRef: FIRStorageReference {
        return FIRStorage.storage().reference(forURL: "gs://skitracks-90e9a.appspot.com")
    }
    
    func saveUser(uid: String) {
        let profile: Dictionary<String, AnyObject> = ["firstName": "" as AnyObject, "lastName": "" as AnyObject]
        mainRef.child(FIR_CHILD_USERS).child(uid).child("profile").setValue(profile)
    }
}
