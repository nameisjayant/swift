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
            Text("Bottosheet contents")
        }
    }
}

struct BottosheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottosheetView()
    }
}
