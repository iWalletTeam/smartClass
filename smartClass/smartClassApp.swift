//
//  smartClassApp.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI

@main
struct smartClassApp: App {
    
    @ObservedObject var appViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            if appViewModel.isLogin{
                StudentAppView()
            } else {
                GreetingView()
                    .environmentObject(appViewModel)
            }
            
        }
    }
}
