//
//  LoginView.swift
//  StartCoordinators
//
//  Created by Vlad Iacob on 23.02.2022.
//

import SwiftUI

struct LoginView: View {
    enum Action {
        case signUp
    }
    
    var action: ((Action) -> Void)?
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("Login")
                .font(.largeTitle)
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Sign in") {
                
            }.buttonStyle(DefaultButtonStyle())
                .padding()
                .background(Color.blue)
                .tint(Color.white)
            Button("Sign up") {
                action?(.signUp)
            }.buttonStyle(DefaultButtonStyle())
                .padding()
                .background(Color.blue)
                .tint(Color.white)
        }
        .padding()
    }
}
