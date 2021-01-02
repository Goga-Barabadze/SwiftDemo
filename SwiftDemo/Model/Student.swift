//
//  Student.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import Foundation

class Student {
    
    var firstname = ""
    var lastname = ""
    
    init() {
        
    }
    
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
    }
    
}
