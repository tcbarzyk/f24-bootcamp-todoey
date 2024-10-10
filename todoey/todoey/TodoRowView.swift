//
//  TodoRowView.swift
//  todoey
//
//  Created by Teddy Barzyk on 10/10/24.
//
import SwiftUI

struct TodoRowView: View {
    @Binding var todo: Todo
    let color: Color
    
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                Image(systemName: todo.isDone ? "checkmark.square.fill" :  "checkmark.square")
                .foregroundStyle(color)
            }
            TextField("", text: $todo.text)
            .foregroundStyle(.black)
        }
    }
}
