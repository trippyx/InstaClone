//
//  User.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 25/12/23.
//

import Foundation

struct User:Identifiable,Codable,Hashable{
    var id:String
    var userName:String
    var profileImageUrl:String?
    var fullName:String?
    var bio:String?
    var email:String
    
    static var mockUsers : [User]{
        return [
            
            .init(id: UUID().uuidString, userName: "trippyx", profileImageUrl: "batman", fullName: "Trippy Soul", bio: "Tippyyyyyyy", email: "trippy@yopmail.com"),
            .init(id: UUID().uuidString, userName: "Bruce", profileImageUrl: "batman", fullName: "Bruce Wayne", bio: "Dark Knight", email: "bruce@yopmail.com"),
            .init(id: UUID().uuidString, userName: "Spideman", profileImageUrl: "batman", fullName: "Peter Parker", bio: "I am spideman", email: "web@yopmail.com"),
            .init(id: UUID().uuidString, userName: "Batman", profileImageUrl: "batman", fullName: "Batman", bio: "I am Batman", email: "batman@yopmail.com"),
            .init(id: UUID().uuidString, userName: "PogoMan", profileImageUrl: "batman", fullName: "Pogo World", bio: "PogoMan i am", email: "pogo@yopmail.com")
        
        ]
    }
    
}

