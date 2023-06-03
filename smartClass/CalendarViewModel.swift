//
//  CalendarViewModel.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 29.05.2023.
//

import Foundation

class CalendarViewModel: ObservableObject{
    @Published var availableDays = [Lesson]()
    
    init(){
        self.availableDays = getDateForMonth(moth: 0)
    }
    
    
    func addDayTime(day: Date, time: Times){
        if let toDay = checkToday(days: availableDays, completion: { date in
            return sameDate(date1: day, date2: date)
        }) {
            if let index = availableDays.firstIndex(of: toDay){
                availableDays[index].times.append(time)
            }
        } else {
            let newDate = Lesson(date: day, times: [time])
            availableDays.append(newDate)
        }
        
    }
    
    func getDateForMonth(moth: Int) -> [Lesson]{
        return [
            Lesson(date: getSumpleDate(1), times: [
                Times(time: "18:00"),
                Times(time: "19:00"),
                Times(time: "20:00"),
                Times(time: "21:00")
            ]),
            Lesson(date: getSumpleDate(3), times: [
                Times(time: "18:00"),
                Times(time: "19:00"),
                Times(time: "21:00")
            ]),
            Lesson(date: getSumpleDate(4), times: [
                Times(time: "18:00"),
                Times(time: "19:00"),
                Times(time: "21:00")
            ]),
            Lesson(date: getSumpleDate(6), times: [
                Times(time: "17:00"),
                Times(time: "19:00"),
                Times(time: "21:00")
            ]),
            Lesson(date: getSumpleDate(10), times: [
                Times(time: "17:00"),
                Times(time: "19:00")
            ])
        ]
    }
    
    
    private func checkToday(days: [Lesson], completion: (Date) -> (Bool)) -> Lesson?{
       
        var resultDates: Lesson?
        for day in days {
            if completion(day.date) {
                resultDates = day
            }
        }
        return resultDates
    }
    
    
    private func sameDate(date1: Date, date2: Date) -> Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(date1, equalTo: date2, toGranularity: .day)
        //return calendar.isDate(date1, inSameDayAs: date2)
    }
}

func getSumpleDate(_ offset: Int) -> Date{
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}
