//
//  ViewController.swift
//  DependencyInjection
//
//  Created by Ian Talisic on 22/04/2023.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var viewModel: UserViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = UserService()
        viewModel = UserViewModel(userService: service, delegate: self)
        viewModel?.fetchUserData()
    }
    
    func displayData(user: User) {
        self.idLabel.text = String(user.id)
        self.nameLabel.text = user.name
        self.ageLabel.text = String(user.age)
        self.addressLabel.text = user.address
    }
}

extension UserViewController: UserViewModelDelegate {
    func didFetchSuccess(user: User) {
        displayData(user: user)
    }
    
    func didFetchError() {
        // do something for error fetching
    }
}

