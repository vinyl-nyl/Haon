//
//  UserViewModel.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Combine

final class UserViewModel: ObservableObject {
    @Published var username: String = "게스트"
    @Published var stats: UserStats = UserStats(totalDays: 12, todayMinutes: 15)
    @Published var notificationsEnabled: Bool = true
}
