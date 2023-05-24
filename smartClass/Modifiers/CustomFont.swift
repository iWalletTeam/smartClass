//
//  CustomFont.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI

struct CustomFont: ViewModifier{
    var font: String
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom(font, size: size))
    }
}
