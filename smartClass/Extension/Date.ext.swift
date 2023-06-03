//
//  Date.ext.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 29.05.2023.
//

import Foundation

extension Date{
    
    func formatDate() -> String{
        //dd.MM.yy
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
    
        return formatter.string(from: self)
    }
    
    func formatTime() -> String{
        //dd.MM.yy
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
    
        return formatter.string(from: self)
    }
    
    func getAllDates() -> [Date]{
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        
        //range.removeLast()
        
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
        
    }
    
    
    func startOfMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
    }
        
    
    func endOfMonth() -> Date {
            return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
        }
    
    
    func getCurentDateStart()->Date{
        let date = Calendar.current.date(bySettingHour: 10, minute: 0, second: 0, of: self)!
        return date
    }
}
