//
//  SettingTextFieldView.swift
//  smartClass
//
//  Created by Демьян Горчаков on 01.06.2023.
//

import SwiftUI

struct SettingTextFieldView: View {
    @State var name = ""
    @State var surname = ""
    @State var nameSurname = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Личные данные")
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            VStack {
                TextField("Имя", text: $name)
                    .padding()
                    .font(.system(size: 30))
                    .frame(height: 60)
                    .background(.white)
                    .cornerRadius(10)
                TextField("Фамилия", text: $surname)
                    .padding()
                    .font(.system(size: 30))
                    .frame(height: 60)
                    .background(.white)
                    .cornerRadius(10)
                TextField("Отчество", text: $nameSurname)
                    .padding()
                    .font(.system(size: 30))
                    .frame(height: 60)
                    .background(.white)
                    .cornerRadius(10)
                HStack {
                    Text("Дата рождения")
                        .fontWeight(.bold)
                    Spacer()
                    Text("25.03.2021")
                        .frame(width: 120, height: 30)
                        .background(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(20)
            .padding(.horizontal)
        }
    }
}

struct SettingTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SettingTextFieldView()
    }
}
