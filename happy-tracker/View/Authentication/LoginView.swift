//
//  LoginView.swift
//  happy-tracker
//
//  Created by Patrick Fuller on 3/21/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome to Happy Tracker")
            // Logo
            LogoView()
            
            Spacer()
                    
            VStack(alignment: .leading) {
                
                Text("Log In")
                    .fontWeight(.black)
                    .font(.title)
                    .padding(.bottom)
                
                // Email and pass section
                // email label
                CustomAuthLabel(label: "Email")
                
                // email input
                CustomTextField(placeholder: "enter email", inputText: $email, isSecure: false)
                
                // Pass label
                CustomAuthLabel(label: "Password")
                
                // Pass input
                CustomTextField(placeholder: "enter password", inputText: $password, isSecure: true)
                
            }
            .padding(.leading, 20)
            .padding(.bottom, 40)
            
            // Login button (roundy Button)
            CustomButton(buttonLabel: "Login") {
                // signin action calls login func
                viewModel.login(withEmail: email, password: password)
                
            }
            .alert("Cannot Login: \(viewModel.authError?.localizedDescription ?? "yeet")", isPresented: $viewModel.isError) {
                Button("OK", role: .cancel){
                    viewModel.isError = false
                }
            }
            
            Spacer()
            
            // newUser->Register (texty button)
            NavigationLink{
                RegisterView()
            
                    //.navigationBarHidden(true)
            } label: {
                HStack {
                    Text("New user?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Sign up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom)
            .foregroundColor(Color(.systemBlue))
          
        }
        .background(Color("pale").opacity(0.2))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}