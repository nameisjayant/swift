//
//  LoginView.swift
//  demoproject
//
//  Created by jayant kumar on 6/23/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        VStack(alignment: .center){
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            Image("userImage")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width:150,height:150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom,75)
            
            UserTextFieldView(username: $username)
            SecurePasswordFieldView  (password:$password)
            
            Text("Login")
                .padding()
                .foregroundColor(.white)
                .background(.green)
                .frame(width: 220,height: 60)
                .cornerRadius(15.0)
            
        }.padding()
    }
}

struct UserTextFieldView : View{
    @Binding var username:String
    var body: some View{
        
        TextField("Username",text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        
    }
}

struct SecurePasswordFieldView : View{
    @Binding var password:String
    var body: some View{
        
        SecureField("Password",text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom,20)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
