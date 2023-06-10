//
//  adminPageVF.swift
//  smartClass
//
//  Created by Shamil Aglarov on 26.05.2023.
//

import SwiftUI

struct Group {
    let title: String
    let numberOfGroups: Int
    let numberOfStudents: Int
}

struct AdminView: View {

    let groups = [
        Group(title: "Информационная безопасность", numberOfGroups: 9, numberOfStudents: 101),
        Group(title: "Компьютерные науки", numberOfGroups: 8, numberOfStudents: 85),
        Group(title: "Физика", numberOfGroups: 10, numberOfStudents: 120)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("МГУ. Физ.тех")
                .font(.largeTitle)
                .padding(.leading)
            
            Text("Группы")
                .font(.title)
                .padding([.leading, .bottom])
            
            ForEach(groups, id: \.title) { group in
                ZStack(alignment: .topTrailing) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(group.title)
                                .font(.system(size: 15))
                                .bold()
                                .padding(.bottom, 8)
                            HStack {
                                Image(systemName: "person.3.fill")
                                Text("Групп: \(group.numberOfGroups)")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.gray)
                                Spacer()
                                Image(systemName: "person.fill")
                                Text("Студентов: \(group.numberOfStudents)")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Spacer()
                    }
                    .frame(height: 100)
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding([.top, .trailing], 22)
                }
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding([.leading, .trailing])
                .padding(.bottom,20)
            }
            
            Spacer()
        }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
