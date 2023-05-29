//
//  TimetableCardFull.swift
//  smartClass
//
//  Created by artemiithefrog on 28.05.2023.
//

import SwiftUI

struct TimetableCardFull: View {
    
    private var currentdate = "18 мая"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image("redRectangleIcon")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("Семинар")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                        .foregroundColor(Color("TextGrayColor"))
                }
                Text("Информатика")
                    .customFont(font: FontManager.Nunito.bold, size: 32)
                    .padding(.top, -20)
                HStack {
                    Text("Дата")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                    Text("18 мая")
                        .customFont(font: FontManager.Nunito.regular, size: 12)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .padding(.top, 3)
                        .padding(.bottom, 2)
                        .background(Color("BlueColor"))
                        .cornerRadius(12)
                    Text("Время")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                    Text("17:00 - 18:30")
                        .customFont(font: FontManager.Nunito.regular, size: 12)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .padding(.top, 3)
                        .padding(.bottom, 2)
                        .background(Color("BlueColor"))
                        .cornerRadius(12)
                }
                Text("Преподователь")
                    .customFont(font: FontManager.Nunito.bold, size: 14)
                    .padding(.top, 29)
                Text("Александр Викторович")
                    .customFont(font: FontManager.Nunito.regular, size: 16)
                Text("Информатика в этом месяце")
                    .customFont(font: FontManager.Nunito.bold, size: 16)
                    .padding(.top, 34)

                Spacer()
                
                Button {
                    
                } label: {
                    Text("Оставить сообщение")
                        .tint(Color.white)
                        .frame(width: 350, height: 50)
                        .background(Color("BlueColor"))
                        .cornerRadius(12)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonArrow())
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image("locationIcon")
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text("Корпус \(TimetableCard().buildingNumber)")
                        .customFont(font: FontManager.Nunito.bold, size: 12)
                }
            }
        }
    }
}

struct BackButtonArrow: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image("arrowIconRight")
                .resizable()
                .frame(width: 17, height: 17)
                .scaledToFit()
                .scaleEffect(x: -1, y: 1)
        }
    }
}

struct TimetableCardFull_Previews: PreviewProvider {
    static var previews: some View {
        TimetableCardFull()
    }
}
//VStack {
//    HStack {
//        Image("redRectangleIcon")
//            .resizable()
//            .frame(width: 15, height: 15)
//        Text("Семинар")
//            .customFont(font: FontManager.Nunito.bold, size: 16)
//            .foregroundColor(Color("TextGrayColor"))
//    }
//    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//    Text("Информатика")
//        .customFont(font: FontManager.Nunito.bold, size: 32)
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//}.padding(.leading, 21)
