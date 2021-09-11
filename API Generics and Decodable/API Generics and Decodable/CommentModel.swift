//
//  CommentModel.swift
//  API Generics and Decodable
//
//  Created by Mahmoud on 9/11/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation
struct CommentModel:Decodable {
    let postId : Int?
    let id : Int?
    let name : String?
    let email : String?
    let body : String?
}
