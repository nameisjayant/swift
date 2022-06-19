//
//  AddList.swift
//  demoproject
//
//  Created by jayant kumar on 6/19/22.
//

import SwiftUI

struct AddList: View {
    @State private var text:String = ""
    @Environment(\.presentationMode) var presentationMode
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    @EnvironmentObject var viewModel:TodoViewModel
    
    var body: some View {
        ScrollView{
        VStack{
            
            TextField("Type something here...",text:$text)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            
            Button(action:saveTodo){
                Text("Save")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .font(.headline)
                    .frame(height : 55)
                    .frame(maxWidth : .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }.padding(.vertical,10)
        }.padding(.all,10)
        }.navigationTitle("Add Todo Items !!")
            .alert(isPresented: $showAlert,content: getAlert)
    }
    
    func saveTodo(){
        if testAppropriate() {
            viewModel.addItems(title: text)
            presentationMode.wrappedValue.dismiss()
        }
       
    }
    
    func testAppropriate()->Bool{
    
        if text.count < 3{
            alertTitle = "Your new todo item must be at least 3 characters long!!! 😨😰😱"
                        showAlert.toggle()
                        return false
        }
        return true
        
    }
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
    
    
}
