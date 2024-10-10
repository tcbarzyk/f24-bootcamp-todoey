//
//  todoeyApp.swift
//  todoey
//
//  Created by Teddy Barzyk on 10/10/24.
//

import SwiftUI

@main
struct todoeyApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListParentView(
                workList: Todo.exampleList,
                choresList: Todo.exampleList,
                personalList: Todo.exampleList
            )
        }
    }
}
