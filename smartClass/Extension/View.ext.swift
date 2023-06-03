//
//  View.ext.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI

extension View{
    func customFont(font: String, size: CGFloat = 18) -> some View {
        modifier(CustomFont(font: font, size: size))
    }
    
    
    func sameDate(date1: Date, date2: Date) -> Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(date1, equalTo: date2, toGranularity: .day)
        //return calendar.isDate(date1, inSameDayAs: date2)
    }
    
    func extraDate(currentDate: Date) -> [String]{
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        
        let data = formatter.string(from: currentDate)
        
        return data.components(separatedBy: " ")
    }
    
    
    func getCurrenMonth(curentMonth: Int) -> Date{
        
        let calendar = Calendar.current
        
        guard let curentMonth = calendar.date(byAdding: .month, value: curentMonth, to: Date()) else { return Date() }
        
        return curentMonth
        
    }
    
    func extractDate(curentMonth: Int) -> [DateValue]{
        let calendar = Calendar.current
        
        
        let curentMonth = getCurrenMonth(curentMonth: curentMonth)
        
        
        var days = curentMonth.getAllDates().compactMap { date -> DateValue in
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date.getCurentDateStart())
        }
        
        let firstDay = calendar.component(.weekday, from: curentMonth.startOfMonth())
        //let firstDay = calendar.component(.weekday, from: days.first?.date ?? Date())
        
        if firstDay == 1 {
            for _ in 0..<6{
                days.insert(DateValue(day: -1, date: Date()), at: 0)
            }
        } else {
            for _ in 1..<firstDay - 1{
                days.insert(DateValue(day: -1, date: Date()), at: 0)
            }
        }

        
        return days
    }
}

