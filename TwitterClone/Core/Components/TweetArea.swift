//
//  TweetArea.swift
//  TwitterClone
//
//  Created by Dheeraj on 27/02/22.
//

import SwiftUI

struct TweetArea: View {
    @Binding var text: String
    let placeholder: String
    init(_ placeholder: String, text: Binding<String>){
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading){
            if text.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical,12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
        
        
    }
}
