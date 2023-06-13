//
//  GreetingTwoView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct GreetingTwoView: View {
    var body: some View {
        VStack{
            ZStack{
                VStack{
                    Image("SecondStart")
                    Spacer()
                }
                VStack{
                    HStack{
                        Text("SmartClass")
                            .font(.custom("Nunito-Bold", size: 36))
                        Spacer()
                    }
                    .padding(.horizontal,20)
                    .padding(.top,40)
                    Spacer()
                }
                
        }
            NavigationLink{
                LoginView()
            } label: {
                Text("Войти")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(Color(UIColor(red: 0.149, green: 0.431, blue: 0.945, alpha: 1)))
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            
            NavigationLink {
                RegistrationView()
            } label: {
                Text("Регистрация")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(.black)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct GreetingTwoView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingTwoView()
    }
}
