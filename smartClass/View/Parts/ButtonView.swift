//
//  ButtonView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 04.06.2023.
//

import SwiftUI

struct ButtonView: View {
    var btnText: String
    var body: some View {
        Text(btnText)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.mBlue)
            .cornerRadius(12)
    }
}

