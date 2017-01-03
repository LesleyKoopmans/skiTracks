//
//  User.swift
//  skiTracks
//
//  Created by Lesley on 03-01-17.
//  Copyright © 2017 Lesley. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String?
    private var _lastName: String?
    private var _userName: String?
    private var _profileImageURL: String?
    private var _uid: String
    
    var firstName: String? {
        get {
            return _firstName
        } set {
            _firstName = newValue
        }
    }
    
    var lastName: String? {
        get {
            return _lastName
        } set {
            _lastName = newValue
        }
    }
    
    var userName: String? {
        get {
            return _userName
        } set {
            _userName = newValue
        }
    }
    
    var profileImage: String? {
        get {
            return _profileImageURL
        } set {
            _profileImageURL = newValue
        }
    }
    
    var uid: String {
        return _uid
    }
    
    init(firstName: String?, lastName: String?, userName: String?, profileImageURL: String?, uid: String) {
        _firstName = firstName
        _lastName = lastName
        _userName = userName
        _profileImageURL = profileImageURL
        _uid = uid
        
    }
}
