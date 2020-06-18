//
//  PostData.swift
//  H4XOR News
//
//  Created by Vadym Horovyi on 18/06/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
