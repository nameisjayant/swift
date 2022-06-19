//
//  Todo.swift
//  demoproject
//
//  Created by jayant kumar on 6/19/22.
//

import Foundation

struct TodoModel : Identifiable,Codable {
    
    var id:String = UUID().uuidString
    var title:String
    var isCompleted:Bool
    
}
