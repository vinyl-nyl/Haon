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
                Section(header: Text("プロフィール")) {
                    HStack {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                        Text(userViewModel.username)
                            .font(.headline)
                    }
                }

                Section(header: Text("学主都計")) {
                    Text("総学習日: \(userViewModel.stats.totalDays)日")
                    Text("今日の学習時間: \(userViewModel.stats.todayMinutes)分")
                }

                Section(header: Text("設定")) {
                    Toggle("通知を受ける", isOn: $userViewModel.notificationsEnabled)
                }
            }
            .navigationTitle("プロフィール")
        }
    }
}

#Preview {
    MyPageView()
        .environmentObject(UserViewModel())
}
