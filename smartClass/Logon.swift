//
//  Logon.swift
//  smartClass
//
//  Created by Владимир Ширяев on 27.05.2023.
//

import SwiftUI

struct Logon: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            VStack{
                Image("hello")
                    .ignoresSafeArea()
                Spacer()
            }
            VStack{
                HStack{
                    Button{
                        dismiss()
                    } label:{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.custom("Nunito-Regular", size: 30))
                    }
                    Text("Войти")
                        .padding(.horizontal, 10)
                        .font(.custom("Nunito-Bold", size: 30))
                    Spacer()
                }
                .padding(.horizontal, 40)
                Spacer()
            }
            ScrollView{
                EmailPasswordView()
                
            }
            .background(.white)
            .cornerRadius(30)
            .shadow(radius: 10)
            .padding()
            .ignoresSafeArea()
            .offset(x:0, y:350)
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Logon_Previews: PreviewProvider {
    static var previews: some View {
        Logon()
    }
}

struct EmailPasswordView: View {
    @State private var emailState: String = ""
    @State private var passwordState: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Text("Авторизация")
                    .font(.custom("Nunito-Bold", size: 20))
                Spacer()
            }
            .padding(.horizontal,39)
            .padding(.top,50)
            VStack{
                TextFieldView(customStateProperty: emailState, customText: "Email")
                TextFieldView(customStateProperty: passwordState, customText: "Пароль")
                
                Button {
                    //
                } label: {
                    Text("Войти")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(Color(UIColor(red: 0.149, green: 0.431, blue: 0.945, alpha: 1)))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom,24)
            }
        }
    }
}
