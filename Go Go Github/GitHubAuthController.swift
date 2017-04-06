//
//  GitHubAuthController.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/3/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import UIKit

class GitHubAuthController: UIViewController {

    @IBOutlet weak var loginHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UserDefaults.standard.getAccessToken() != nil) {
            loginButtonOutlet.isEnabled = false
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if (UserDefaults.standard.getAccessToken() != nil) {
            loginButtonOutlet.isEnabled = false
        }
    }
    
    @IBAction func printTokenPressed(_ sender: Any) {
        
        print(String(describing: UserDefaults.standard.string(forKey: "access_token")))
        
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        let parameters = ["scope" : "email,user,repo"]
        
        GitHub.shared.oAuthRequestWith(parameters: parameters)
        
    }
    
    func dismissAuthController() {
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }
    

}
