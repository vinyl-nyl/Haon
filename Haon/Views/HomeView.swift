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
                    Text("오늘의 단어")
                        .font(.title2.bold())
                    WordCardView(word: "사랑", meaning: "사랑 (사랑) - Love")

                    Text("오늘의 회화")
                        .font(.title2.bold())
                    ConversationCardView(sentence: "안녕하세요! 처음 뵙겠습니다.", translation: "こんにちは！初めまして。")

                    Text("나의 학습 현황")
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
