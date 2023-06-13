//
//  ProfileView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 04.06.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        //NavigationView {
        ScrollView {
            
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("1 курс")
                        .customFont(font: FontManager.main, size: 18)
                        .foregroundColor(.textGray)
                    
                }
                HStack {
                    Text("Специальность")
                        .customFont(font: FontManager.Nunito.black, size: 18)
                        Text("ИВТ")
                            .foregroundColor(.white)
                            .customFont(font: FontManager.main, size: 14)
                            .padding(EdgeInsets(top: 3, leading: 10, bottom: 2, trailing: 10))
                            .background(Color.mBlue)
                            .cornerRadius(12)
                    
                }
                .padding(.bottom, 20)
                HStack {
                    Text("Предметы в этом семестре")
                        .fontWeight(.bold)
                    Spacer()
                }
                LessonView()
                LessonView()
                LessonView()
            }
            .padding(.bottom, 70)
            
        }
            .navigationTitle("Имя Фамилия")
            .padding(.horizontal)
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .foregroundColor(.blue)
                    }
                }
            }
        //}
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
