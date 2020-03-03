//
//  Person.swift
//  MVP
//
//  Created by Алексей Макаров on 02.03.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import Foundation

struct Comment: Decodable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
