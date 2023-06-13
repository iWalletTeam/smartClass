//
//  MessagesView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 05.06.2023.
//

import SwiftUI

struct MessagesView: View {

    var body: some View {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
                    Section {
                        ForEach(MessageModel.exempleMessage, id: \.title) { message in
                            
                            if message.section == .newsLetterMessage {
                                MessageItemView(section: message.section, date: message.date, title: message.title, text: message.text)
                            }
                        }
                    } header: {
                        HStack {
                            Text("Рассылка")
                                .customFont(font: FontManager.Nunito.bold)
                                .foregroundColor(.lGray)
                            Spacer()
                        }
                    }
                    
                    Section {
                        ForEach(MessageModel.exempleMessage, id: \.title) { message in
                            
                            if message.section == .privateMessage {
                                MessageItemView(section: message.section, date: message.date, title: message.title, text: message.text)
                            }
                        }
                    } header: {
                        HStack {
                            Text("Личное")
                                .customFont(font: FontManager.Nunito.bold)
                                .foregroundColor(.lGray)
                            Spacer()
                        }
                        
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 80)
            }
                
            .navigationTitle("Уведомления")
        }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
