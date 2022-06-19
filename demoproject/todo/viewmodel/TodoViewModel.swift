//
//  TodoViewModel.swift
//  demoproject
//
//  Created by jayant kumar on 6/19/22.
//

import Foundation

class TodoViewModel : ObservableObject{
    
    @Published var todoList:[TodoModel] =  [] {
        didSet{
            saveItems()
        }
    }
    init(){
        getItems()
    }
    
    let key:String  = "todo_list"
    
    func deleteItems(index:IndexSet){
        todoList.remove(atOffsets:index)
    }
    
    func moveItems(from:IndexSet,to:Int){
        todoList.move(fromOffsets: from, toOffset: to)
    }
    
    
    func addItems(title:String){
        let todo = TodoModel(title: title, isCompleted: false)
        todoList.append(todo)
    }
    
    func getItems(){
        guard
            let data = UserDefaults.standard.data(forKey: key),
            let saveItems = try? JSONDecoder().decode([TodoModel].self,from:data)
        else {return}
        
        self.todoList = saveItems
    }
    
    func saveItems(){
        
        if let encodedData = try? JSONEncoder().encode(todoList){
            UserDefaults.standard.set(encodedData,forKey: key)
        }
        
    }
    
}
