//
//  ProfileHeaderViewModel.swift
//  InstagramCloneFirestore
//
//  Created by Caleb Danielsen on 12/10/2021.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}
