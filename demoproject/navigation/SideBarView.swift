//
//  SideBarView.swift
//  demoproject
//
//  Created by jayant kumar on 1/13/22.
//

import SwiftUI


class PresenterView : ObservableObject{
    
    enum AvailableViews{
        case red,green,blue
    }
    @Published var view:AvailableViews = .red
    
}

struct ColouredContentView : View{
    var title: String
    var bg: UIColor
    @EnvironmentObject var presenterView:PresenterView
    
    var body: some View{
        
        ZStack{
            Color(bg)
                .ignoresSafeArea()
                .overlay(Color(.black).opacity(0.5).ignoresSafeArea())
            
            VStack{
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer().frame(height:40)
                Picker("Switch to...",selection: $presenterView.view){
                    Text("Red").tag(PresenterView.AvailableViews.red)
                    Text("Blue").tag(PresenterView.AvailableViews.blue)
                    Text("Green").tag(PresenterView.AvailableViews.green)
                    
                }.pickerStyle(MenuPickerStyle())
                    .padding(8)
                    .cornerRadius(5)
                    .background(.white)
                    .foregroundColor(.black)
            }
        }
        
    }
}

struct RootView: View{
    @EnvironmentObject var presenterView:PresenterView
    var body: some View{
        
        switch presenterView.view {
        case .red : RedView()
        case .green : GreenView()
        case .blue : BlueView()
        }
        
    }
}

struct RedView : View{
    var body: some View{
        ColouredContentView(title: "Welcome to Red", bg: UIColor.red)
    }
}

struct GreenView : View{
    var body: some View{
        ColouredContentView(title: "Welcome to Green", bg: UIColor.green)
    }
}

struct BlueView : View {
    var body: some View{
        ColouredContentView(title: "Welcome to Blue", bg: UIColor.blue)
    }
}

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
