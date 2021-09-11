//
//  PostModel.swift
//  API Generics and Decodable
//
//  Created by Mahmoud on 9/11/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation
struct PostModel : Decodable{
    let userId : Int?
    let id : Int?
    let title : String?
    let body : String?
    
}
