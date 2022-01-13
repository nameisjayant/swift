//
//  SideBarView.swift
//  demoproject
//
//  Created by jayant kumar on 1/13/22.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        NavigationView{
            List{
                Label("Home",systemImage: "person")
                Label("Videos",systemImage: "video")
            }.navigationTitle("IOS Programming")
        }
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
            
    }
}
