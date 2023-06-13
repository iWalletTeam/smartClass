//
//  StudentAppView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 03.06.2023.
//

import SwiftUI

struct StudentAppView: View {
    @State var selectedTab: TabBarModel = TabBarModel(text: "Календарь", icon: Icons.iconCalendar, tapIcon: Icons.iconTabCalendar)
    @State var selected: String = "Календарь"
    
    init() {
        UITabBar.appearance().isHidden = true
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: UIFont(name: FontManager.Nunito.black, size: 30)!]
    }
    
    var body: some View {
            ZStack(alignment: .bottom) {
                    TabView(selection: $selected) {
                        NavigationView{
                            CalendarTabView()
                        }
                        .tag("Календарь")
                        
                        NavigationView{
                            MessagesView()
                        }
                        .tag("Уведомления")
                        
                       NavigationView{
                            ProfileView()
                        }
                        .tag("Профиль")
                        
                    }
                HStack {
                    Spacer()
                    ForEach(TabBarModel.exampleTapBar, id: \.self) { tap in
                        TapBarItemView(tab: tap, selected: $selected)
                        Spacer()
                    }
                }
                .padding(.top, 10)
                .frame(maxWidth: .infinity)
                .background(.white)
            }
    }
}

struct StudentAppView_Previews: PreviewProvider {
    static var previews: some View {
        StudentAppView()
    }
}

struct TapBarItemView: View {
    @State var tab: TabBarModel
    @Binding var selected: String
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.spring()) {
                    selected = tab.text
                }
            } label: {
                HStack {
                    Image(selected == tab.text ? tab.tapIcon : tab.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 21, height: 21)
                    if selected == tab.text {
                        Text(tab.text)
                            .foregroundColor(Colors.tabIconColor)
                            .customFont(font: FontManager.main, size: 14)
                    }
                }
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(selected == tab.text ? Colors.buttonTabBG : .white)
        .clipShape(Capsule())
    }
}
