//
//  FoundationExtensions.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/3/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import Foundation

//MARK: UserDefaults
extension UserDefaults {
    
    func getAccessToken() -> String? {
        guard let token = UserDefaults.standard.string(forKey: "access_token") else { return nil }
        return token
    }
    
    func save(accessToken: String) -> Bool {
        UserDefaults.standard.set(accessToken, forKey: "access_token")
        return UserDefaults.standard.synchronize()
    }
    
}

//MAKR: String Validation
extension String {
    
    func validate() -> Bool {
        
        let pattern = "[^0-9a-zA-Z_-]" //if it's not any of these characters, then match
        
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            
            let range = NSRange(location: 0, length: self.characters.count)
            let matches = regex.numberOfMatches(in: self, options: .reportCompletion, range: range)
            
            if matches > 0 {
                return false
            }
            
            return true
            
        } catch {
            return false
        }
    }
    
}
