//
//  MessageModel.swift
//  smartClass
//
//  Created by Vadim on 27.05.2023.
//

import Foundation

struct MessageModel {
    let section: SectionMessage
    let date: String
    let title: String
    let text: String
    
    static let exempleMessage: [MessageModel] = [
        MessageModel(section: SectionMessage.newsLetterMessage, date: "15 мая", title: "Перенос занятия", text: "Lorem ipsum dolor sit amet"),
        MessageModel(section: SectionMessage.newsLetterMessage, date: "12 мая", title: "Субботник", text: "Перенос занятия Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
        MessageModel(section: SectionMessage.privateMessage, date: "18 мая", title: "В деканат", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
        MessageModel(section: SectionMessage.privateMessage, date: "19 мая", title: "В деканат1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    ]
}


//Section
enum SectionMessage: String {
    case privateMessage = "Личное"
    case newsLetterMessage = "Рассылка"
    
}
