//
//  MessageItemView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 05.06.2023.
//

import SwiftUI

struct MessageItemView: View {
    let section: SectionMessage
    let date: String
    let title: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
                HStack {
                    Text(title)
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                    Spacer()
                    Text(date)

                        .customFont(font: FontManager.Nunito.light, size: 14)
                }
                Text(text)
                    .customFont(font: FontManager.Nunito.regular, size: 16)
                
            }
        .padding(.vertical, 17)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 20)
        .background(Color.mGray)
        .cornerRadius(20)
    }
}
