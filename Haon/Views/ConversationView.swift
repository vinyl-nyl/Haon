//
//  ConversationView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct ConversationView: View {
    let sampleSentences: [Sentence] = [
        Sentence(korean: "안녕하세요!", japanese: "こんにちは！"),
        Sentence(korean: "이거 얼마예요?", japanese: "これはいくらですか？"),
        Sentence(korean: "화장실이 어디예요?", japanese: "トイレはどこですか？")
    ]

    var body: some View {
        NavigationView {
            List(sampleSentences) { sentence in
                VStack(alignment: .leading, spacing: 6) {
                    Text(sentence.korean)
                        .font(.headline)
                    Text(sentence.japanese)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("회화 연습")
        }
    }
}

#Preview {
    ConversationView()
}
