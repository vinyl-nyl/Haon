//
//  HomeView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("今日の単語")
                        .font(.title2.bold())
                    WordCardView(word: "번역", meaning: "翻訳(Translation)")

                    Text("今日の会話")
                        .font(.title2.bold())
                    ConversationCardView(sentence: "안녕하세요! 처음 뵙겠습니다.", translation: "こんにちは！初めまして。")

                    Text("学主都計")
                        .font(.title2.bold())
                    StatsView(stats: userViewModel.stats)
                }
                .padding()
            }
            .navigationTitle("Haon")
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(UserViewModel())
}
