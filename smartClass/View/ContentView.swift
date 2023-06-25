//
//  ContentView.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 24.05.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: FirebaseManager
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                StudentAppView()
            } else {
                GreetingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
