//
//  StatsView.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI

struct StatsView: View {
    let stats: UserStats

    var body: some View {
        HStack(spacing: 24) {
            VStack {
                Text("\(stats.totalDays)日")
                    .font(.title.bold())
                Text("総学習日")
                    .font(.caption)
            }
            VStack {
                Text("\(stats.todayMinutes)分")
                    .font(.title.bold())
                Text("今日の学習(分)")
                    .font(.caption)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.orange.opacity(0.2))
        .cornerRadius(12)
    }
}
