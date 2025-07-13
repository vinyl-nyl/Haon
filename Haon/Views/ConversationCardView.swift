//
//  ConversationCardView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct ConversationCardView: View {
    let sentence: String
    let translation: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(sentence)
                .font(.title3)
            Text(translation)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.green.opacity(0.2))
        .cornerRadius(12)
    }
}
