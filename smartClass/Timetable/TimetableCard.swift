//
//  TimetableCard.swift
//  smartClass
//
//  Created by artemiithefrog on 25.05.2023.
//

import SwiftUI

struct TimetableCard: View {
    
    private var lesson = "Основы программирования"
    private var lessonTime = "17:00 - 18:30"
    private var buildingNumber = 9
    private var audienceNumber = 201
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(lesson)")
                    .customFont(font: FontManager.Nunito.bold, size: 16)
                    .padding(.top, 19)
                    .padding(.leading, 25)
                Spacer()
                Image("arrowIcon")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .padding(.top, 20)
                    .padding(.trailing, 25)
            }
            Text("\(lessonTime)")
                .customFont(font: FontManager.Nunito.regular, size: 12)
                .foregroundColor(.white)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.top, 3)
                .padding(.bottom, 2)
                .background(Color("BlueColor"))
                .cornerRadius(12)
                .padding(.leading, 25)
            HStack {
                Image("buildingIcon")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.leading, 25)
                Text("корпус: ")
                    .customFont(font: FontManager.Nunito.regular, size: 14)
                    .foregroundColor(Color("TextGrayColor"))
                Text("\(buildingNumber)")
                    .customFont(font: FontManager.Nunito.regular, size: 14)
                    .padding(.leading, -8)
                Image("audienceIcon")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.leading, 25)
                Text("аудитория: ")
                    .customFont(font: FontManager.Nunito.regular, size: 14)
                    .foregroundColor(Color("TextGrayColor"))
                Text("\(audienceNumber)")
                    .customFont(font: FontManager.Nunito.regular, size: 14)
                    .padding(.leading, -8)
            }
            .padding(.bottom, 33)
        }
        .background(Color("BackgroundGrayColor"))
        .cornerRadius(20)
    }
}

struct TimetableCard_Previews: PreviewProvider {
    static var previews: some View {
        TimetableCard()
    }
}
