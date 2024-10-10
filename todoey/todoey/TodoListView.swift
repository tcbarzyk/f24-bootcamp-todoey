//
//  TodoListView.swift
//  todoey
//
//  Created by Teddy Barzyk on 10/10/24.
//

import SwiftUI

struct TodoListView: View {
    @Binding var todoList: [Todo]
    let color: Color
    let listTitle: String
    
    func onAddTodo () -> Void {
        todoList.append(Todo())
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section("Todos") {
                    ForEach($todoList) { $todo in
                        TodoRowView(todo: $todo, color: color)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(listTitle)
            .toolbar {
                ToolbarItem (placement: .bottomBar ){
                    HStack {
                        Button() {
                            onAddTodo()
                        } label: {
                            Image(systemName: "plus.circle")
                            Text("New Todo")
                        }
                        .bold()
                        .foregroundStyle(color)
                        Spacer()
                    }
                }
            }
        }
    }
}
