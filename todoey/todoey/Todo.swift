//
//  Todo.swift
//  todoey
//
//  Created by Teddy Barzyk on 10/10/24.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var text: String = ""
    var isDone: Bool = false
}

extension Todo {
    static var example: Todo {
        Todo(text: "Walk the dog")
    }
}

extension Todo {
    static var exampleList: [Todo] {
        [Todo(text:"Walk the dog"), Todo(text:"Feed the cat"), Todo(text:"Buy bird food")]
    }
}
