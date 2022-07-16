//
//  BottosheetView.swift
//  demoproject
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct BottosheetView: View {
    @State var isShow = false
    var body: some View {
        Button("Click here"){
            isShow.toggle()
        }
        .sheet(isPresented: $isShow) {
            if #available(iOS 16.0, *) {
                Text("Bottosheet contents")
                    .presentationDetents([.height(200)])
            } else {
               
                Text("Bottosheet contents")
            }
        }
    }
}

struct BottosheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottosheetView()
    }
}
