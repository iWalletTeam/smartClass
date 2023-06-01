//
//  LessonsView.swift
//  smartClass
//
//  Created by Демьян Горчаков on 01.06.2023.
//

import SwiftUI

struct LessonsView: View {
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Основы программирования")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.red)
                    Text("Зачет")
                    ZStack {
                        Rectangle()
                            .frame(width: 100, height: 30)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                        Text("30 часов")
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                HStack {
                    Text("Преподаватель: ")
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                    Text("Александр Викторович")
                        .font(.system(size: 15))
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView()
    }
}
