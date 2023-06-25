//
//  TextFieldView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var customStateProperty: String
    var customText: String
    var color = Color.mGray
    var isSecure = false
    var body: some View {
        VStack {
            if isSecure {
                SecureField(customText, text: $customStateProperty)
            } else {
                TextField(customText, text: $customStateProperty)
            }
        }
        .frame(height: 52)
        .padding(.horizontal,23)
        .background(color)
        .cornerRadius(10)
        .customFont(font: FontManager.main, size: 18)
    }
}

