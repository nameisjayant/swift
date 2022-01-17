//
//  NetworkView.swift
//  demoproject
//
//  Created by jayant kumar on 1/17/22.
//

import SwiftUI

struct NetworkView: View {
    @EnvironmentObject var network:ApiService
    var body: some View {
        ScrollView{
            Text("All Posts")
                .font(.title).bold()
            ForEach(network.posts){ post in
                VStack{
                    Text("\(post.body)")
                } .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
            }
        }
        .onAppear{
            network.getPost()
        }
    }
}

struct NetworkView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkView()
            .environmentObject(ApiService())
    }
}
