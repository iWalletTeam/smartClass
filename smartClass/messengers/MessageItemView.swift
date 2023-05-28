//
//  MessageItemView.swift
//  smartClass
//
//  Created by Vadim on 26.05.2023.
//

import SwiftUI

struct MessageItemView: View  {
    
    // let id: UUID = UUID()
    let section: SectionMessage
    let date: String
    let title: String
    let text: String
    
    var body: some View {
        //Text
        HStack() {
            //TODO: - Не получаеться сделать в пиксель в пиксель
            VStack() {
                HStack(alignment: .lastTextBaseline) {
                    Text(title)
                        .font(.custom(FontManager.Nunito.bold, size: 16))
                        .padding(.leading, 25)
                    Spacer()
                    Text(date)
                        .padding(.trailing, 25)
                        .font(.custom(FontManager.Nunito.light, size: 12))
                }
                HStack {
                    Text(text)
                        .font(.custom(FontManager.Nunito.regular, size: 14))
                        .padding(.top, -8)
                        .padding(.leading, 25)
                    Spacer()
                }
                
            }
            Spacer()
        }
        //TODO: -  В падинге число не как в макете , просто подогнал
        .padding(.vertical, 17)
        .frame(maxWidth: .infinity)
        .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
        .cornerRadius(20)

        .padding(.horizontal, 20)
    }
}
    
    
    
    
    
    struct MessageItemView_Previews: PreviewProvider {
        static var previews: some View {
            MessageItemView(section: .newsLetterMessage, date: "14 мая", title: "Перенос занятия", text: "Lorem ipsum dolor a")
        }
    }

