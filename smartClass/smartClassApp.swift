//
//  smartClassApp.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct smartClassApp: App {
    @StateObject var viewModel = FirebaseManager()
  //  @ObservedObject var appViewModel = AppViewModel()
   
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
//            if appViewModel.isLogin{
//                StudentAppView()
//            } else {
                ContentView()
                //GreetingView()
                    //.environmentObject(appViewModel)
                    .environmentObject(viewModel)
            //}
        }
    }
}
