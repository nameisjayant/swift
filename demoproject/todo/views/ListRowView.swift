//
//  ListRowView.swift
//  demoproject
//
//  Created by jayant kumar on 6/19/22.
//

import SwiftUI

struct ListRowView: View {
    let todo:TodoModel
    var body: some View {
        HStack{
            Image(systemName:todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todo.isCompleted ? .green : .red)
            Text(todo.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var todo = TodoModel(title: "Item1", isCompleted: false)
    static var previews: some View {
        ListRowView(todo: todo)
    }
}
