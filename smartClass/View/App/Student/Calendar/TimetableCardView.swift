//
//  TimetableCardView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 05.06.2023.
//

import SwiftUI

struct TimetableCardView: View {
    private var currentdate = "18 мая"
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                HStack {
                    Image("redRectangleIcon")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("Семинар")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                        .foregroundColor(.textGray)
                }
                
                HStack {
                    Text("Дата")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                    Text("18 мая")
                        .customFont(font: FontManager.Nunito.regular, size: 12)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 3, leading: 10, bottom: 2, trailing: 10))
                        .background(Color.mBlue)
                        .cornerRadius(12)
                    Text("Время")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                    Text("17:00 - 18:30")
                        .customFont(font: FontManager.Nunito.regular, size: 12)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 3, leading: 10, bottom: 2, trailing: 10))
                        .background(Color.mBlue)
                        .cornerRadius(12)
                }
                VStack(alignment: .leading){
                    Text("Преподователь")
                        .customFont(font: FontManager.Nunito.bold, size: 14)
                        .padding(.top, 29)
                    Text("Александр Викторович")
                        .customFont(font: FontManager.Nunito.regular, size: 16)
                }
                
                VStack(alignment: .leading){
                    Text("Информатика в этом месяце")
                        .customFont(font: FontManager.Nunito.bold, size: 16)
                        .padding(.top, 34)
                        .padding(.bottom, 20)
                    
                    CalendarView()
                }
                .padding(.bottom, 30)
                
                Button {
                    
                } label: {
                    ButtonView(btnText: "Оставить сообщение")
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 80)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonArrow())
        .navigationTitle("Информатика")
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

struct TimetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableCardView()
    }
}
