//
//  TextFieldView.swift
//  smartClass
//
//  Created by Владимир Ширяев on 27.05.2023.
//

import SwiftUI

struct TextFieldView: View {
    @State var customStateProperty: String
    var customText: String
    
    var body: some View {
        VStack {
            TextField(customText, text: $customStateProperty)
                .frame(height: 52)
                .padding(.horizontal,23)
                .background(Color(UIColor(red: 0.958, green: 0.958, blue: 0.958, alpha: 1)))
                .cornerRadius(10)
                .font(.custom("Nunito-Regular", size: 16))
        }
        .padding(.horizontal,20)
        .padding(.bottom,18)
    }
}
