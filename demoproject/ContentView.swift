//
//  ContentView.swift
//  demoproject
//
//  Created by jayant kumar on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Circle()
                    .stroke(.black,lineWidth: 2)
                    .frame(width:44 , height:44)
                    
                Text("Hey What's up")
                    .font(.title)
                Capsule()
                    .frame(height:44)
                    .foregroundColor(.green)
                    .overlay(Text("Sign Up"))
            }.padding()
            .background(.white)
                .clipShape(RoundedRectangle(
                    cornerRadius: 25.0,style: .continuous))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
