//
//  Category.swift
//  Todoey
//
//  Created by Vadym Horovyi on 29/06/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
