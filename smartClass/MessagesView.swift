//
//  MessagesView.swift
//  smartClass
//
//  Created by Vadim on 24.05.2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        Text("Hello")
    }
}

// Create message item
struct Message: View {
    var text: String
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 322, height: 80)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
