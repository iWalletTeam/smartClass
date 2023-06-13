//
//  LessonView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 04.06.2023.
//

import SwiftUI

struct LessonView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Основы программирования")
                    .customFont(font: FontManager.Nunito.bold, size: 16)
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.mRed)
                    Text("Зачет")
                        .customFont(font: FontManager.main, size: 14)
                    Text("30 часов")
                        .foregroundColor(.white)
                        .customFont(font: FontManager.main, size: 14)
                        .padding(EdgeInsets(top: 3, leading: 10, bottom: 2, trailing: 10))
                        .background(Color.mBlue)
                        .cornerRadius(12)
                    
                }
                
                HStack {
                    Text("Преподаватель: ")
                        .customFont(font: FontManager.Nunito.bold, size: 14)
                    Text("Александр Викторович")
                        .customFont(font: FontManager.main, size: 14)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.mGray)
            .cornerRadius(10)
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}
