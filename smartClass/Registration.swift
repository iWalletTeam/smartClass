//
//  Registration.swift
//  smartClass
//
//  Created by Владимир Ширяев on 25.05.2023.
//

import SwiftUI

struct Registration: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Button{
                        dismiss()
                    } label:{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.custom("Nunito-Regular", size: 30))
                    }
                    Text("Регистрация")
                        .padding(.horizontal, 10)
                        .font(.custom("Nunito-Bold", size: 30))
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

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}

struct EmailView: View {
    @State private var emailState: String = ""
    @State private var passwordState: String = ""
    @State private var passwordTwoState: String = ""
    
    var body: some View {
        VStack {
            HStack{
                Text("Email и пароль")
                    .padding(.horizontal,19)
                    .foregroundColor(Color(UIColor(red: 0.629, green: 0.629, blue: 0.629, alpha: 1)))
                Spacer()
            }
            VStack{
                TextFieldView(customStateProperty: emailState, customText: "Email")
                    .padding(.top,45)
                TextFieldView(customStateProperty: passwordState, customText: "Пароль")
                TextFieldView(customStateProperty: passwordTwoState, customText: "Повторить пароль")
                    .padding(.bottom,27)
            }
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
        VStack {
            HStack{
                Text("Личные данные")
                    .padding(.horizontal,19)
                    .foregroundColor(Color(UIColor(red: 0.629, green: 0.629, blue: 0.629, alpha: 1)))
                Spacer()
            }
            VStack{
                TextFieldView(customStateProperty: surnameState, customText: "Фамилия")
                    .padding(.top,45)
                TextFieldView(customStateProperty: firstNameState, customText: "Имя")
                TextFieldView(customStateProperty: fatherNameState, customText: "Отчество")
                
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Дата рождения")
                        .bold()
                }
                .environment(\.locale, Locale.init(identifier: "ru"))
                .padding(.horizontal,20)
                .padding(.bottom,27)
            }
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
                    .foregroundColor(Color(UIColor(red: 0.629, green: 0.629, blue: 0.629, alpha: 1)))
                Spacer()
            }
            VStack{
                VStack{
                    HStack{
                        Text("Выберите университет")
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal,29)
                    .padding(.top,45)
                    
                    TextFieldView(customStateProperty: universityState, customText: "Университет")
                    
                }
                
                VStack{
                    HStack{
                        Text("Выберите специальность")
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal,29)
                    TextFieldView(customStateProperty: specialtyState, customText: "Специальность")
                    
                }
                HStack(spacing: 13){
                    VStack{
                        HStack{
                            Text("Группа")
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal,29)
                        
                        TextFieldView(customStateProperty: groupState, customText: "")
                            //.frame(width: 188)
                        
                    }
                    VStack{
                        HStack{
                            Text("Курс")
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal,29)
                        
                        TextFieldView(customStateProperty:  courseState, customText: "")
                            //.frame(width: 109)
                        
                    }
                }
                .padding(.bottom,27)
                
            }
            .background(.white)
            .cornerRadius(30)
        }
        .padding(.horizontal,20)
    }
}
