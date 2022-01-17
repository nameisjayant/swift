//
//  ShowData.swift
//  demoproject
//
//  Created by jayant kumar on 1/17/22.
//

import SwiftUI

struct ShowData: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(name){ content in
                    VStack{
                        Text("Name : \(content.name)")
                        Text("Age : \(content.age)")
                    }
                }
            }.navigationTitle("Candidate Names")
        }
    }
}

struct ShowData_Previews: PreviewProvider {
    static var previews: some View {
        ShowData()
    }
}
