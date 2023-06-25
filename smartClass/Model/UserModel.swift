//
//  UserModel.swift
//  smartClass
//
//  Created by Владимир Ширяев on 24.06.2023.
//

import Foundation

struct UserModel:Identifiable, Codable {
    let id: String
    let email: String
    let password: String
    
    // личная информация
    let surname: String
    let firstName: String
    let fatherName: String
    let birthDate: Date
    
    // проф. сведения
    let university: String
    let specialty: String
    let group: String
    let course: String
    
    var fullname: String {
        surname + " " + firstName
    }
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}
