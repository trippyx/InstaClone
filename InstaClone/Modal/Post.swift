//
//  Post.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 26/12/23.
//

import Foundation

struct Post:Hashable,Identifiable,Codable{
    let id:String
    let ownerUid:String
    let caption:String
    var likes:Int
    let imageUrl:String
    let timeStamp:Date?
    var user:User?
    
   static var MOCK_POSTS:[Post]{
        return [
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test Caption for now", likes: 123, imageUrl: "batman", timeStamp: Date(), user: User.mockUsers[0]),
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Wakanda fOREVER", likes: 1213, imageUrl: "batman", timeStamp: Date(), user: User.mockUsers[1]),
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Spiderman", likes: 1231, imageUrl: "batman", timeStamp: Date(), user: User.mockUsers[2]),
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Iron man", likes: 1123, imageUrl: "batman", timeStamp: Date(), user: User.mockUsers[3]),
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Very Hungry", likes: 12113, imageUrl: "batman", timeStamp: Date(), user: User.mockUsers[4]),
        ]
    }
    
}
