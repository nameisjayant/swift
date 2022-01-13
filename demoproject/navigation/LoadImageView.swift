//
//  LoadImageView.swift
//  demoproject
//
//  Created by jayant kumar on 1/13/22.
//

import SwiftUI

struct LoadImageView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
        AsyncImage(url: URL(string: "https://picsum.photos/id/237/200/300")!){image in
            image
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width:200,height:200,alignment:.center)
                .cornerRadius(50)
                
        } placeholder: {
            ProgressView()
        }
        }
    }
}

struct LoadImageView_Previews: PreviewProvider {
    static var previews: some View {
        LoadImageView()
    }
}
