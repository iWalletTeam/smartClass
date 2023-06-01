//
//  SettingViewController.swift
//  smartClass
//
//  Created by Демьян Горчаков on 01.06.2023.
//

import SwiftUI

struct SettingViewController: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Настройки")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                
                Spacer()
            }
            .padding(.horizontal)
            SettingTextFieldView()
            Spacer()
            VStack {
                EntryButtonView()
                Button {
                    //                some code
                } label: {
                    Text("Выйти")
                        .foregroundColor(.red)
                }
            }
            
        }
    }
    
    struct SettingViewController_Previews: PreviewProvider {
        static var previews: some View {
            SettingViewController()
        }
    }
}
