//
//  CalendarView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 05.06.2023.
//

import SwiftUI

struct CalendarTabView: View {
    private var audience = "Физ. Тех. Группа 101"
    private var currentdate = "18 мая"
    private var lessonsCount = 3
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("\(audience)")
                    .customFont(font: FontManager.Nunito.bold, size: 19)
                    .foregroundColor(.lGray)
                CalendarView()
                
                Text("\(currentdate)")
                    .customFont(font: FontManager.Nunito.bold, size: 18)
                Text("Сегодня у тебя \(lessonsCount) занятия")
                    .customFont(font: FontManager.Nunito.regular, size: 14)
                    .foregroundColor(.lGray)
                
                TimetableCard()
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 70)
        }
        .navigationTitle(Text("Расписание"))
        
    }
}
