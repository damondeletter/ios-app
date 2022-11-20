//
//  User.swift
//  NomadGym
//
//  Created by Damon De Letter on 20/11/2022.
//

import Foundation

struct User : Identifiable, Codable {
    let id: UUID?
    var firstName: String
    var lastName : String
    var username: String = ""
    var password: String = ""
    
}
