//
//  MessagesView.swift
//  smartClass
//
//  Created by Vadim on 24.05.2023.
//

import SwiftUI

struct MessagesView: View {
    //TODO: - add messages
    var messages: [String] = ["Test", "Test1", "Test 2"]
    
    var body: some View {
        //title
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    ForEach(messages, id: \.self) { messageText in
                        HStack {
                            Message(text: messageText)
                                .padding(.top, 13)
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar {
                                    ToolbarItem(placement: .principal) {
                                        HStack {
                                            Text("Уведомления")
                                                .padding(.leading, 34)
                                                .font(.custom(FontManager.Nunito.bold, size: 32))
                                            Spacer()
                                        }
                                    }
                                    
                                }
                        }
                        .padding(.horizontal, 34)
                    }
                }
            }
        }
    }
}



// Create message item
struct Message: View {
    var text: String
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(text)
                    .font(.custom(FontManager.Nunito.regular, size: 12))
                    .padding(.leading, 10)
                    .padding(.top, 10)
                Spacer()
            }
            Spacer()
        }
        .frame(width: .infinity, height: 80)
        .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
        .cornerRadius(20)
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
