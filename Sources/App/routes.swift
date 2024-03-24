import Vapor

func routes(_ app: Application) throws {
    
    app.middleware.use(LogMiddleware())
    
    app.post("department") { req -> EventLoopFuture<Department> in
        let department = try req.content.decode(Department.self)
        return department.create(on: req.db).map { department }
    }

    app.post("employee") { req -> EventLoopFuture<Employee> in
        let employee = try req.content.decode(Employee.self)
        return employee.create(on: req.db).map { employee }
    }
    
    app.post("project") { req -> EventLoopFuture<Project> in
        let project = try req.content.decode(Project.self)
        return project.create(on: req.db).map { project }
    }
    
    app.get("department") { req async throws in
        try await Department.query(on: req.db)
            .all()
    }
    
    app.get("employee") { req async throws in
        try await Employee.query(on: req.db)
            .all()
    }
    
    app.get("project") { req async throws in
        try await Project.query(on: req.db)
            .all()
    }
    
    /*
    app.get("project", ":name") { req async throws -> String in
        guard let name = req.parameters.get("name") else {
            throw Abort(.badRequest)
        }
        return "Project info: \(name)"
    }
     */
    
}
