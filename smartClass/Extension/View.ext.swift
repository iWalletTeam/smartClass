//
//  View.ext.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI

extension View{
    func customFont(font: String, size: CGFloat = 18) -> some View {
        modifier(CustomFont(font: font, size: size))
    }
}

