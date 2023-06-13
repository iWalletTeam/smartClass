//
//  RegistrationView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
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
                    Text("Регистрация")
                        .padding(.horizontal, 10)
                        .customFont(font: FontManager.Nunito.bold, size: 30)
                    Spacer()
                }
                .padding(.horizontal, 20)
                Spacer()
            }
            EmailView()
                .padding(.top,25)
                .padding(.bottom,25)
            PersonalityView()
                .padding(.bottom,25)
            UniversityView()
            // .padding(.bottom,25)
            
            Button {
                //
            } label: {
                Text("Далее")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(Color(UIColor(red: 0.149, green: 0.431, blue: 0.945, alpha: 1)))
                    .cornerRadius(10)
            }
            .padding(.top,10)
            .padding()
        }
        .background(Color(UIColor(red: 0.958, green: 0.958, blue: 0.958, alpha: 1)))
        .navigationBarBackButtonHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

struct EmailView: View {
    @State private var emailState: String = ""
    @State private var passwordState: String = ""
    @State private var passwordTwoState: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            HStack{
                Text("Email и пароль")
                    .padding(.horizontal,19)
                    .foregroundColor(.textGray)
                Spacer()
            }
            VStack(spacing: 15){
                TextFieldView(customStateProperty: $emailState, customText: "Email")
                TextFieldView(customStateProperty: $passwordState, customText: "Пароль")
                TextFieldView(customStateProperty: $passwordTwoState, customText: "Повторить пароль")
            }
            .padding(20)
            .background(.white)
            .cornerRadius(30)
        }
        .padding(.horizontal,20)
    }
}


struct PersonalityView: View {
    @State private var surnameState: String = ""
    @State private var firstNameState: String = ""
    @State private var fatherNameState: String = ""
    @State private var birthDate = Date.now
    
    
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                Text("Личные данные")
                    .padding(.horizontal,19)
                    .foregroundColor(.textGray)
                Spacer()
            }
            VStack(spacing: 15){
                TextFieldView(customStateProperty: $surnameState, customText: "Фамилия")
                TextFieldView(customStateProperty: $firstNameState, customText: "Имя")
                TextFieldView(customStateProperty: $fatherNameState, customText: "Отчество")
                
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Дата рождения")
                }
                .environment(\.locale, Locale.init(identifier: "ru"))
                .padding(.horizontal,20)
            }
            .padding(20)
            .background(.white)
            .cornerRadius(30)
        }
        .padding(.horizontal,20)
    }
}


struct UniversityView: View {
    @State private var universityState: String = ""
    @State private var specialtyState: String = ""
    @State private var groupState: String = ""
    @State private var courseState: String = ""
    
    var body: some View {
        VStack {
            HStack{
                Text("Университет и группа")
                    .padding(.horizontal,19)
                    .foregroundColor(.textGray)
                Spacer()
            }
            VStack(spacing: 15){
                VStack(alignment: .leading){
                    Text("Выберите университет")
                        .customFont(font: FontManager.Nunito.bold)
                        .padding(.horizontal,19)
                    
                    TextFieldView(customStateProperty: $universityState, customText: "Университет")
                    
                }
                
                VStack(alignment: .leading){
                    Text("Выберите специальность")
                        .customFont(font: FontManager.Nunito.bold)
                        .padding(.horizontal,19)
                    
                    TextFieldView(customStateProperty: $specialtyState, customText: "Специальность")
                    
                }
                HStack(spacing: 13){
                    VStack(alignment: .leading){
                        Text("Группа")
                            .customFont(font: FontManager.Nunito.bold)
                        .padding(.horizontal,19)
                        
                        TextFieldView(customStateProperty: $groupState, customText: "")
                            //.frame(width: 188)
                        
                    }
                    VStack(alignment: .leading){
                        Text("Курс")
                            .customFont(font: FontManager.Nunito.bold)
                        .padding(.horizontal,19)
                        
                        TextFieldView(customStateProperty:  $courseState, customText: "")
                        
                    }
                }
                
            }
            .padding(20)
            .background(.white)
            .cornerRadius(30)
        }
        .padding(.horizontal,20)
    }
}
