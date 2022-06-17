//
//  ListTestView.swift
//  demoproject
//
//  Created by jayant kumar on 1/22/22.
//

import SwiftUI

struct Item : Identifiable{
    var id:UUID
    var name:String
}

struct ListTestView: View {
    @State private var items:[Item] = [Item(id: UUID(),name: "Item one"),
                               Item(id: UUID(),name: "Item two"),Item(id: UUID(),name: "Item Three")]
    var body: some View {
        NavigationView{
            List{
                ForEach(items){item in
                    Text(item.name)
                }
                .onDelete{IndexSet in
                    for index in IndexSet {
                        items.remove(at: index)
                    }
                }
                .onMove{indices,newOffSet in
                    items.move(fromOffsets: indices, toOffset: newOffSet)
                }
            }.navigationBarTitle("Todo's")
                .toolbar {
                    ToolbarItemGroup(placement:.navigationBarTrailing){
                        EditButton()
                        Button(action:{
                            items.append(Item(id:UUID(),name:"item four"))
                        }){
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

struct ListTestView_Previews: PreviewProvider {
    static var previews: some View {
        ListTestView()
    }
}
