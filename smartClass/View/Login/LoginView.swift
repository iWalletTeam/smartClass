//
//  LoginView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Image("hello")
                Spacer()
            }
            
            VStack{
                VStack{
                    HStack{
                        Button{
                            dismiss()
                        } label:{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15)
                                .foregroundColor(.black)
                        }
                        Text("Войти")
                            .padding(.horizontal, 10)
                            .customFont(font: FontManager.Nunito.bold, size: 30)
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
                
                VStack{
                    EmailPasswordView()
                }
                .padding(.bottom, 40)
                .background(.white)
                .cornerRadius(30)
                .shadow(radius: 10)
            }
           
        }
        .padding(.top, 50)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct EmailPasswordView: View {
    @State private var emailState: String = ""
    @State private var passwordState: String = ""
    //@EnvironmentObject var appViewModel: AppViewModel
    @EnvironmentObject var viewModel: FirebaseManager
    
    var body: some View {
        VStack{
            HStack{
                Text("Авторизация")
                    .customFont(font: FontManager.Nunito.bold, size: 20)

                Spacer()
            }
            .padding(.horizontal,39)
            .padding(.top,50)
            
            VStack(spacing: 20){
                TextFieldView(customStateProperty: $emailState, customText: "Email")
                
                TextFieldView(customStateProperty: $passwordState, customText: "Пароль", isSecure: true)
                
                
                Button {
                   // appViewModel.isLogin.toggle()
                    Task {
                        try await viewModel.singIn(withEmail: emailState, password: passwordState)
                    }
                } label: {
                    ButtonView(btnText: "Войти")
                }
            }
            .padding(.horizontal, 20)
        }
    }
}
