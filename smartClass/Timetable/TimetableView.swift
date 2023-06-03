//
//  TimetableView.swift
//  smartClass
//
//  Created by artemiithefrog on 25.05.2023.
//

import SwiftUI

struct TimetableView: View {
    
    private var audience = "Физ. Тех. Группа 101"
    private var currentdate = "18 мая"
    private var lessonsCount = 3
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    Text("\(audience)")
                        .customFont(font: FontManager.Nunito.bold, size: 19)
                        .foregroundColor(Color("ClassLightGrayColor"))
                        .padding(.leading, 20)
                    Text("Расписание")
                        .customFont(font: FontManager.Nunito.bold, size: 32)
                        .padding(.leading, 20)
                    
                    VStack(alignment: .center) {
                        Text("Календарь")
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill()
                                .frame(width: 350, height: 300)
                                .opacity(0.1)
                            Text("Тут будет календарь")
                        }
                    }
                    .padding(.leading, 22)
                    
                    Text("\(currentdate)")
                        .customFont(font: FontManager.Nunito.bold, size: 18)
                        .padding(.leading, 20)
                    Text("Сегодня у тебя \(lessonsCount) занятия")
                        .customFont(font: FontManager.Nunito.regular, size: 14)
                        .foregroundColor(Color("ClassLightGrayColor"))
                        .padding(.leading, 20)
                    
                    TimetableCard()
                        .padding(EdgeInsets(top: 0, leading: 21, bottom: 23, trailing: 21))
                    
                }
            }
        }
    }
}

struct TimetableView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableView()
    }
}
