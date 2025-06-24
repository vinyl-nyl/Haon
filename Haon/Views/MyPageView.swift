//
//  MyPageView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct MyPageView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("프로필")) {
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                        Text(userViewModel.username)
                            .font(.headline)
                    }
                }

                Section(header: Text("학습 통계")) {
                    Text("총 학습일: \(userViewModel.stats.totalDays)일")
                    Text("오늘 학습 시간: \(userViewModel.stats.todayMinutes)분")
                }

                Section(header: Text("설정")) {
                    Toggle("알림 받기", isOn: $userViewModel.notificationsEnabled)
                }
            }
            .navigationTitle("마이페이지")
        }
    }
}

#Preview {
    MyPageView()
        .environmentObject(UserViewModel())
}
