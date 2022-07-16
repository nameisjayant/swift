//
//  BottomTabBar.swift
//  demoproject
//
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct BottomTabBar: View {
    var body: some View {
        TabView{
            Text("Profile Contents")
                .tabItem{
                    Label("Profile",systemImage: "person.fill")
                }
            Text("Tv Contents")
                .tabItem{
                    Label("Tv",systemImage: "tv.fill")
                }
        }.background(.yellow)
    }
}

struct HomeView : View {
    var body: some View{
        VStack(alignment : .leading){
            Text("Home Contents")
        }
    }
}

struct BottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBar()
    }
}
