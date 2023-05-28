//
//  MessagesView.swift
//  smartClass
//
//  Created by Vadim on 24.05.2023.
//

import SwiftUI

struct MessagesView: View {
    let sectionColor: Color = Color(red: 165/255, green: 165/255, blue: 165/255)
    
    var body: some View {
        //title
        NavigationView {
            ScrollView(showsIndicators: false) {
                Section {
                    ForEach(MessageModel.exempleMessage, id: \.title) { message in
                        
                        if message.section == .newsLetterMessage {
                            MessageItemView(section: message.section, date: message.date, title: message.title, text: message.text)
                                .padding(.bottom, 22)
                        }
                    }
                } header: {
                    HStack {
                        Text("Рассылка")
                            .font(.custom(FontManager.Nunito.bold, size: 16))
                            .foregroundColor(sectionColor)
                        Spacer()
                    }
                    .padding(.leading, 50)
                }
                
                Section {
                    ForEach(MessageModel.exempleMessage, id: \.title) { message in
                        
                        if message.section == .privateMessage {
                            MessageItemView(section: message.section, date: message.date, title: message.title, text: message.text)
                                .padding(.bottom, 22)
                        }
                    }
                } header: {
                    HStack {
                        Text("Личное")
                            .font(.custom(FontManager.Nunito.bold, size: 16))
                            .foregroundColor(sectionColor)
                        Spacer()
                    }
                    .padding(.leading, 50)
                    
                }
            }
            .navigationTitle("Уведомления")
        }
        
    }
}




struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
