//
//  GreetingView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct GreetingView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom){
                VStack{
                    Image("StartScreen")
                        .frame(width: 400, height: 420)
                        .ignoresSafeArea()
                    Spacer()
                }
                VStack{
                    Text("Добро пожаловать!")
                        .font(.custom("Nunito-Bold", size: 24))
                        .padding(.top,40)
                    Text("Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. \n\nIpsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков.")
                        .foregroundColor(Color(UIColor(red: 0.629, green: 0.629, blue: 0.629, alpha: 1)))
                        .padding(.horizontal,36)
                        .font(.custom("Nunito-Regular", size: 16))
                        .padding(.top,10)
                    
                    NavigationLink {
                        GreetingTwoView()
                    } label: {
                        Text("Продолжить")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(Color(UIColor(red: 0.149, green: 0.431, blue: 0.945, alpha: 1)))
                            .cornerRadius(10)
                    }
                    .padding(.top,10)
                    .padding()
                    .padding(.bottom,24)
                    
                }
                
                .padding()
                .background(.white)
                .cornerRadius(30)
                .shadow(radius: 10)
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
