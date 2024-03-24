//
//  File.swift
//  
//
//  Created by ☮︎ on 3/24/24.
//

import Foundation
import Fluent
import Vapor

final class Department: Model, Content {
    init() { }
    
    
    static let schema: String = "Departments"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
