//
//  TodoListParentView.swift
//  todoey
//
//  Created by Teddy Barzyk on 10/10/24.
//
import SwiftUI

struct TodoListParentView: View {
    @State var workList: [Todo]
    @State var choresList: [Todo]
    @State var personalList: [Todo]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Sections") {
                    NavigationLink("Work") { TodoListView(todoList: $workList, color: .red, listTitle: "Work") }
                        .foregroundStyle(.red)
                    NavigationLink("Chores") { TodoListView(todoList: $choresList, color: .blue, listTitle: "Chores") }
                        .foregroundStyle(.blue)
                    NavigationLink("Personal") { TodoListView(todoList: $personalList, color: .green, listTitle: "Personal") }
                        .foregroundStyle(.green)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Todoey")
        }
    }
}

#Preview {
    TodoListParentView(
        workList: Todo.exampleList,
        choresList: Todo.exampleList,
        personalList: Todo.exampleList
    )
}
