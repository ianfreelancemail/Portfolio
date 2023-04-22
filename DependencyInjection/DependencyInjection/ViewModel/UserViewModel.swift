//
//  UserViewModel.swift
//  DependencyInjection
//
//  Created by Ian Talisic on 22/04/2023.
//

import Foundation

protocol UserViewModelDelegate {
    func didFetchSuccess(user: User)
    func didFetchError()
}

class UserViewModel {
    private var user: User!
    let userService: APIService
    let delegate: UserViewModelDelegate
    
    var id: String {
        return String(user?.id ?? 0)
    }
    
    var name: String {
        return user?.name ?? ""
    }
    
    var age: String {
        return String(user?.age ?? 0)
    }
    
    var address: String {
        return user?.address ?? ""
    }
    
    init(userService: APIService, delegate: UserViewModelDelegate) {
        self.userService = userService
        self.delegate = delegate
    }
    
    func fetchUserData() {
        let params: NSDictionary = [:] // Add any necessary parameters for the API request
        userService.getData(param: params) { (result: Result<User, Error>) in
            switch result {
            case .success(let user):
                self.user = user
                self.delegate.didFetchSuccess(user: user)
                print("Received user data: \(user)")
            case .failure(let error):
                self.delegate.didFetchError()
                print("Error fetching user data: \(error.localizedDescription)")
            }
        }
    }
}
