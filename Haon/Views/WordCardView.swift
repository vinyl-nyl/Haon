//
//  WordCardView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct WordCardView: View {
    let word: String
    let meaning: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(word)
                .font(.largeTitle.bold())
            Text(meaning)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(12)
    }
}
