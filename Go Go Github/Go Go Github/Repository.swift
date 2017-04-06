//
//  Repository.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/4/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import Foundation

class Repository {
    let name : String?
    let description : String?
    let language : String?
    let stars : String?
    let createdAt : String?
    let forked : Bool?
    
    init?(json: [String : Any]) {
        self.name = json["name"] as? String ?? "No name"
        self.description = json["description"] as? String ?? "No description"
        self.language = json["language"] as? String ?? "Undefined language"
        self.stars = json["stargazers_count"] as? String ?? "No Stars"
        self.createdAt = json["created_at"] as? String
        self.forked = json["fork"] as? Bool
        
    }
}
