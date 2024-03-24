//
//  File.swift
//  
//
//  Created by ☮︎ on 3/24/24.
//

import Foundation
import Fluent
import Vapor

final class Project: Model, Content {
    init() { }
    
    
    static let schema: String = "Projects"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "start_date")
    var start_date: String
    
    @Field(key: "end_date")
    var end_date: String
    
    @Field(key: "budget")
    var budget: String
    
    init(id: UUID? = nil, name: String, title: String, start_date: String, end_date: String, budget: String) {
        self.id = id
        self.name = name
        self.start_date = start_date
        self.end_date = end_date
        self.budget = budget
    }
}
