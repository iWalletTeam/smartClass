//
//  Profile.swift
//  smartClass
//
//  Created by Демьян Горчаков on 01.06.2023.
//

import SwiftUI

struct Profile: View {
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text("1 курс")
                            .font(.system(size: 20))
                            .opacity(0.5)
                        Spacer()
                        NavigationLink(destination: SettingViewController()) {
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.blue)
                        }
                    }
                }
                HStack {
                    Text("Имя Фамиля")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Spacer()
                }
                ScrollView {
                    HStack {
                        Text("Специальность")
                            .fontWeight(.bold)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .frame(width: 100, height: 30)
                            Text("ИВТ")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                        }
                        Spacer()
                    }
                    HStack {
                        Text("Предметы в этом семестре")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    LessonsView()
                    LessonsView()
                    LessonsView()
                }
                .padding(.top, 20)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        .padding(.horizontal)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
