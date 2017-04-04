//
//  RepoViewController.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/4/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import UIKit

class RepoViewController: UIViewController {

    var repos = [Repository]()
    
    @IBOutlet weak var repoTableView: UITableView!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.repoTableView.dataSource = self
        self.repoTableView.delegate = self
        
        self.repoTableView.estimatedRowHeight = 50
        self.repoTableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
        update()
    }
    
    func update() {
        print("Update repo controller here.")
        
        GitHub.shared.getRepos { (repositories) in
            guard let unwrappedRepos = repositories else {return}
            
            OperationQueue.main.addOperation {
                self.repos = unwrappedRepos
            }
            
        }
    }

}

extension RepoViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hooray")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(RepoTableViewCell.identifier)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RepoTableViewCell
            .identifier, for: indexPath) as! RepoTableViewCell
        
        let repo = self.repos[indexPath.row]
        
        print("Inside of RepoViewController")
        print(repo.name as Any)
        
        cell.repoTableCellLabel.text = repo.name
        
        return cell
    }
}
