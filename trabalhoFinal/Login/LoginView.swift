//
//  LoginView.swift
//  trabalhoFinal
//
//  Created by Thiago Ribeiro on 29/11/25.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLogged: Bool
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image("image1")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(20)
                .padding(.bottom, 20)
            
            Text("Bem-vindo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            // Campos de Entrada
            VStack(spacing: 15) {
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                SecureField("Senha", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Button(action: {
     
                if !email.isEmpty {
                    withAnimation {
                        isLogged = true
                    }
                }
            }) {
                Text("Entrar")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LoginView(isLogged: .constant(false))
}
