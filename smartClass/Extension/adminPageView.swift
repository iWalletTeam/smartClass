//
//  adminPageVF.swift
//  smartClass
//
//  Created by Shamil Aglarov on 26.05.2023.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("Календарь", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle((GraphicalDatePickerStyle()))
                .padding(.horizontal).frame(width: 350)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(20)
        }
    }
}

struct AdminView: View {
    
    var body: some View {
        VStack {
            Text("Расписание")
                .font(.title)
            CalendarView()
            Spacer().frame(height: 350)
        }
    }
}

struct Admin_Previews: PreviewProvider {
    
    static var previews: some View {
        AdminView()
    }
}
