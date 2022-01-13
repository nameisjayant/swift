//
//  Pager.swift
//  demoproject
//
//  Created by jayant kumar on 1/13/22.
//

import SwiftUI

struct Pager: View {
    var body: some View {
        TabView{
            ZStack{
                Color.blue
            Text("Page one")
                    .font(.largeTitle)
            }
            ZStack{
                Color.green
            Text("Page Two")
                .font(.largeTitle)
            }
            ZStack{
                Color.orange
            Text("Page Three")
                    .font(.largeTitle)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(
            .page(backgroundDisplayMode: .always)
        )
    }
}

struct Pager_Previews: PreviewProvider {
    static var previews: some View {
        Pager()
    }
}
