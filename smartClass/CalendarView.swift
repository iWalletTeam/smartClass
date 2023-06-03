//
//  CalendarView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 29.05.2023.
//

import SwiftUI

struct CalendarView: View {
    let daysName = ["пн","вт","ср","чт","пт","сб","вс"]
    @ObservedObject var calendarViewModel = CalendarViewModel()
    @State var curentMonth: Int = 0
    @State var currentDate = Date()
    let calendarGrid = Array(repeating: GridItem(.flexible()), count: 7)
    @State var today = Date()
    
    var body: some View {
        
            VStack(alignment: .leading){
                Text("Календарь")
                    .customFont(font: FontManager.main)
                    .padding(.leading, 20)
                    .foregroundColor(.gray)
                VStack{
                    
                    VStack(spacing: 30){
                        VStack(spacing: 24){
                            HStack{
                                //left
                                HStack{
                                    Button {
                                        curentMonth -= 1
                                    } label: {
                                        Image(systemName: "chevron.left")
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                                Spacer()
                                VStack{
                                    Text(extraDate(currentDate: currentDate)[1])
                                        .customFont(font: FontManager.Nunito.bold, size: 14)
                                    Text(extraDate(currentDate: currentDate)[0])
                                        .customFont(font: FontManager.Nunito.bold, size: 20)
                                        .foregroundColor(.mBlue)
                                }
                                Spacer()
                                //right
                                HStack{
                                    Button {
                                        curentMonth += 1
                                    } label: {
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                            }
                            .padding(.horizontal, 20)
                            
                            HStack(spacing: 0){
                                ForEach(daysName, id: \.self) { day in
                                    Text(day)
                                        .frame(maxWidth: .infinity)
                                        .customFont(font: FontManager.Nunito.black)
                                }
                            }
                        }
                        
                        LazyVGrid(columns: calendarGrid, spacing: 10) {
                            ForEach(extractDate(curentMonth: curentMonth)) { value in
                                CardView(value: value)
                                    .environmentObject(calendarViewModel)
                                    .overlay {
                                        if sameDate(date1: value.date, date2: today), value.day != -1 {
                                            ZStack{
                                                Circle()
                                                    .stroke(Color.mBlue, lineWidth: 4)
                                                    .frame(width: 35, height: 35)
                                            }
                                            .zIndex(0)
                                        }
                                    }
                                    .onTapGesture {
                                        today = value.date
                                        currentDate = value.date
                                        //
                                    }
                            }
                        }
                        .onChange(of: curentMonth) { newValue in
                            currentDate = getCurrenMonth(curentMonth: curentMonth)
                            today = Date()
                        }
                    }

                }
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .background(Color.mGray)
                .cornerRadius(20)
                
            }
            .padding()
        
        
    }
}


struct CardView: View{
    @ObservedObject var calendarViewModel = CalendarViewModel()
    var value: DateValue
    
    var body: some View{
        VStack{
            if value.day != -1 {
                
                if let selectDay = calendarViewModel.availableDays.first(where: { day in
                    return sameDate(date1: day.date, date2: value.date)
                }){
                    ZStack{
                        Circle()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                            .foregroundColor(Color.mBlue)
                            
                        Text("\(value.day)")
                            .foregroundColor(.white)
                            .overlay {
                                ZStack{
                                    Circle()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(Color.mRed)
                                    Text("\(selectDay.times.count)")
                                        .customFont(font: FontManager.main, size: 14)
                                        .foregroundColor(.white)
                                }
                                .offset(x: -15, y: -15)
                            }
                    }
                } else {
                    Text("\(value.day)")
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                }
            }
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}


struct DateValue: Identifiable{
    var id = UUID().uuidString
    var day: Int
    var date: Date
    var isTime: Bool = false
    var lessons: [Lesson] = []
}

struct Lesson: Identifiable, Equatable{
    var id = UUID().uuidString
    var date: Date
    var times: [Times]
}

struct Times: Identifiable, Equatable{
    var id = UUID().uuidString
    var time: String
}
