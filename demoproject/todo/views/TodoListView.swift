//
//  TodoListView.swift
//  demoproject
//
//  Created by jayant kumar on 6/19/22.
//

import SwiftUI

struct TodoListView: View {
    
    @EnvironmentObject var viewModel:TodoViewModel
    
    var body: some View {
        ZStack{
            List{
                ForEach(viewModel.todoList){todo in
                    ListRowView(todo:todo)
                }
                .onDelete(perform: viewModel.deleteItems)
                .onMove(perform: viewModel.moveItems)
            }
        }.navigationTitle("Todo List !!")
            .navigationBarItems(leading: EditButton(),
                                trailing: NavigationLink("Add", destination: AddList()))
    }
    
}

struct TodoListView_Previews: PreviewProvider {
    
    static var previews: some View {
        TodoListView()
            .environmentObject(TodoViewModel())
    }
}
