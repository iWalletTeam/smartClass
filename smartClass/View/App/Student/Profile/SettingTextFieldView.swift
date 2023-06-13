//
//  SettingTextFieldView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 04.06.2023.
//

import SwiftUI

struct SettingTextFieldView: View {
    @State var name = ""
    @State var surname = ""
    @State var nameSurname = ""
    @State var date = Date()
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
                TextFieldView(customStateProperty: $name, customText: "Имя", color: .white)
                
                TextFieldView(customStateProperty: $surname, customText: "Фамилия", color: .white)
                
                
                TextFieldView(customStateProperty: $nameSurname, customText: "Отчество", color: .white)
             
                HStack {
                    Text("Дата рождения")
                        .fontWeight(.bold)
                    Spacer()
                    
                    DatePicker("", selection: $date, displayedComponents: .date)
                }
                .padding()
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(20)
        }
    }
}

struct SettingTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SettingTextFieldView()
    }
}
