//
//  RepoViewController.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/4/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import UIKit

class RepoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        update()
    }
    
    func update() {
        print("Update repo controller here.")
        
        GitHub.shared.getRepos { (repositories) in
            //update tableView
        }
    }

}
