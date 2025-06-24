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
                    Label("홈", systemImage: "house.fill")
                }

            WordListView()
                .tabItem {
                    Label("단어", systemImage: "text.book.closed.fill")
                }

            ConversationView()
                .tabItem {
                    Label("회화", systemImage: "message.fill")
                }

            QuizView()
                .tabItem {
                    Label("퀴즈", systemImage: "pencil.and.outline")
                }

            MyPageView()
                .tabItem {
                    Label("마이페이지", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
