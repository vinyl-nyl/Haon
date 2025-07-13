//
//  MainTabView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("ホーム", systemImage: "house.fill")
                }

            WordListView()
                .tabItem {
                    Label("単語", systemImage: "text.book.closed.fill")
                }

            ConversationView()
                .tabItem {
                    Label("会話", systemImage: "message.fill")
                }

            QuizView()
                .tabItem {
                    Label("クイズ", systemImage: "pencil.and.outline")
                }

            MyPageView()
                .tabItem {
                    Label("プロフィール", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
