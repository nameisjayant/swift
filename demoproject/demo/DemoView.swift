//
//  DemoView.swift
//  demoproject
//
//  Created by jayant kumar on 1/22/22.
//

import SwiftUI

struct DemoView: View {
    @State private var toggle=false
    @State private var size = 20.0
    let products = ["iPhone", "iPad", "iMac", "MacBook", "Watch", "AppleTv"]
    var body: some View {
        NavigationView{
            VStack{
                Section{
                    Toggle(isOn:$toggle){
                        Text("Wanna increase font size")
                    }
                }.padding()
                if toggle {
                    Slider(value : $size, in: 15...30){
                        Text("Font Size")
                    }.padding()
                        .onAppear{print("Appear")}
                        .onDisappear{print("disappear")}
            }
                
                Section{
                    List(products,id:\.self){product in
                        NavigationLink(destination: Text("\(product)")){
                            Text(product)
                                .font(.body)
                        }
                    }.navigationBarTitle("Products")
                        .onAppear{print("Appear")}
                        .onDisappear{print("disappear")}
                }
        }
    }.onAppear{print("Appear")}
    .onDisappear{print("disappear")}
}
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
