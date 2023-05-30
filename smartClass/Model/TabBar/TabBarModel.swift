//
//  TapBarModel.swift
//  smartClass
//
//  Created by Vladislav Novoshinskiy on 29.05.2023.
//

import Foundation

struct TabBarModel: Hashable {
    let text: String
    let icon: String
    let tapIcon: String
    
    static let exampleTapBar: [TabBarModel] =
    [
        TabBarModel(text: "Календарь", icon: Icons.iconCalendar, tapIcon: Icons.iconTabCalendar),
        TabBarModel(text: "Уведомления", icon: Icons.iconClock, tapIcon: Icons.iconTabClock),
        TabBarModel(text: "Профиль", icon: Icons.iconProfile, tapIcon: Icons.iconTabProfile)
    ]
}
