//
//  adminPageVF.swift
//  smartClass
//
//  Created by Shamil Aglarov on 26.05.2023.
//
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
        Group(title: "Информатика и вычислительная техника", numberOfGroups: 9, numberOfStudents: 101),
        Group(title: "Информатика и вычислительная техника", numberOfGroups: 8, numberOfStudents: 85),
        Group(title: "Информатика и вычислительная техника", numberOfGroups: 10, numberOfStudents: 120)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Название универа")
                    .font(.system(size: 16, weight: .light))
                    .padding(.leading, 34)
                
                Text("Группы")
                    .font(.system(size: 32, weight: .bold))
                    .padding(.leading, 34)

                ForEach(groups, id: \.title) { group in
                    GroupView(group: group)
                }

                Spacer(minLength: 8) // Задает минимальное расстояние между предыдущим и следующим элементом

                HStack {
                    Spacer()
                    VStack {
                        Button(action: {
                            // Add action here
                        }) {
                            Image(systemName: "plus")
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding(20)
                                .background(Color(hex: "#F4F4F4"))
                                .clipShape(Circle())
                        }
                        Text("Добавить группу")
                            .font(.system(size: 19.36))
                            .foregroundColor(.black)
                            .padding(.top, 5) // Изменён отступ сверху до 5
                            .padding(.bottom, 83)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct GroupView: View {
    let group: Group

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 14) {
                Text(group.title)
                    .font(.system(size: 16.3, weight: .bold))
                    .foregroundColor(.black)

                HStack {
                    Image(systemName: "person.3.fill")
                    Text("Групп: \(group.numberOfGroups)")
                        .font(.system(size: 19.36))
                        .foregroundColor(.black)
                        .padding(.trailing, 0)
                    Spacer()
                    Image(systemName: "person.fill")
                    Text("Студентов: \(group.numberOfStudents)")
                        .font(.system(size: 19.36))
                        .foregroundColor(.black)
                }
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .alignmentGuide(.top) { d in d[.top] }
        }
        .padding([.top, .horizontal], 20)
        .frame(height: 143)
        .background(Color(hex: "#F4F4F4"))
        .cornerRadius(20)
        .padding(.bottom, 26)
        .padding(.leading, 22)
        .padding(.trailing, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AdminView()
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = (
                (int >> 8) * 17,
                (int >> 4 & 0xF) * 17,
                (int & 0xF) * 17
            )
        case 6: // RGB (24-bit)
            (r, g, b) = (
                int >> 16,
                int >> 8 & 0xFF,
                int & 0xFF
            )
        default:
            (r, g, b) = (0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: 1
        )
    }
}
