//
//  File.swift
//
//
//  Created by ☮︎ on 3/22/24.
//

import Foundation
import Fluent

struct CreateEmployeesTableMigration: AsyncMigration {
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("Employees")
            .id()
            .field("name", .string, .required)
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema("Employees")
            .delete()
    }
    
}
