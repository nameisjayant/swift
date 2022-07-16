//
//  ToggleView.swift
//  demoproject
//
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct ToggleView: View {
    @State var isToogle = false
    var body: some View {
        VStack{
            Toggle("Toggle in swift ui",isOn: $isToogle)
                .toggleStyle(SwitchToggleStyle(tint: .red))
        }.padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
