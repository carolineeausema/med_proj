//
//  File.swift
//  
//
//  Created by ☮︎ on 3/24/24.
//

import Foundation
import Fluent
import Vapor

final class Employee: Model, Content {
    init() { }
    
    
    static let schema: String = "Employees"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "title")
    var title: String
    
    init(id: UUID? = nil, name: String, title: String) {
        self.id = id
        self.name = name
        self.title = title
    }
}
