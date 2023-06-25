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
    
    @EnvironmentObject var viewModel: FirebaseManager

    var body: some View {
        if let user = viewModel.currentUser {
            VStack {
                HStack {
                    Text("Личные данные")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                VStack {
                    TextFieldView(customStateProperty: $name, customText: user.firstName, color: .white)
                    
                    TextFieldView(customStateProperty: $surname, customText: user.surname, color: .white)
                    
                    
                    TextFieldView(customStateProperty: $nameSurname, customText: user.fatherName, color: .white)
                    
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
}

struct SettingTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SettingTextFieldView()
    }
}
