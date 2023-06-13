//
//  TabBarModel.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
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
