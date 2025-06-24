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
                Text("\(stats.totalDays)")
                    .font(.title.bold())
                Text("총 학습일")
                    .font(.caption)
            }
            VStack {
                Text("\(stats.todayMinutes)분")
                    .font(.title.bold())
                Text("오늘 학습")
                    .font(.caption)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.orange.opacity(0.1))
        .cornerRadius(12)
    }
}
