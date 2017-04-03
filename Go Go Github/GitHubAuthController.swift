//
//  GitHubAuthController.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/3/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import UIKit

class GitHubAuthController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func printTokenPressed(_ sender: Any) {
        
        
        
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        let parameters = ["scope" : "email,user"]
        
        GitHub.shared.oAuthRequestWith(parameters: parameters)
        
    }
    

}