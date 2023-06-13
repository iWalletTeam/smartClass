//
//  SettingView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 04.06.2023.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack {
                    SettingTextFieldView()
                    
                    VStack {
                        Button {
                            //
                        } label: {
                            ButtonView(btnText: "Сохранить")
                        }

                        Button {
                            //some code
                        } label: {
                            Text("Выйти")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            
            .navigationTitle("Настройки")
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
