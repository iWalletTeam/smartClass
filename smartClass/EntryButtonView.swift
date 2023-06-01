//
//  EntryButtonView.swift
//  smartClass
//
//  Created by Демьян Горчаков on 01.06.2023.
//

import SwiftUI

struct EntryButtonView: View {
    var body: some View {
        Button {
            //            <#code#>
        } label: {
            ZStack{
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width / 1.1, height: 60)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                Text("Сохранить")
                    .foregroundColor(.white)
                    .font(.system(size: 23))
            }
        }
    }
    
    
    struct EntryButtonView_Previews: PreviewProvider {
        static var previews: some View {
            EntryButtonView()
        }
    }
}
