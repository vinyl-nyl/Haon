//
//  UserRepository.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation

final class UserRepository {
    func fetchUserName() -> String {
        return "ゲスト"
    }

    func fetchStats() -> UserStats {
        return UserStats(totalDays: 12, todayMinutes: 15)
    }
}
