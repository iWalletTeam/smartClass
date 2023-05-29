//
//  TapBarView.swift
//  smartClass
//
//  Created by Vladislav Novoshinskiy on 29.05.2023.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedTab: TabBarModel = TabBarModel(text: "Календарь", icon: Icons.iconCalendar, tapIcon: Icons.iconTabCalendar)
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                if selectedTab.text == "Календарь" {
                    CalendarView()
                } else if selectedTab.text == "Уведомления" {
                    ClockView()
                } else if selectedTab.text == "Профиль" {
                    ProfileView()
                }
            }
            HStack {
                Spacer()
                ForEach(TabBarModel.exampleTapBar, id: \.self) { tap in
                    TapBarItemView(tab: tap.self, selected: $selectedTab)
                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.white)
        }
    }
}

struct TapBarItemView: View {
    @State var tab: TabBarModel
    @Binding var selected: TabBarModel
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.spring()) {
                    selected = tab
                }
            } label: {
                HStack {
                    Image(selected.text == tab.text ? tab.tapIcon : tab.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 21, height: 21)
                    if selected.text == tab.text {
                        Text(tab.text)
                            .foregroundColor(Colors.tabIconColor)
                    }
                }
            }
        }
        .padding()
        .background(selected.text == tab.text ? Colors.buttonTabBG : .white)
        .clipShape(Capsule())
    }
}

struct TapBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
