//
//  HomeViewModel.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var todayWord: Word?
    @Published var todaySentence: Sentence?

    func loadTodayContent() {
        // 샘플 데이터 (추후 서버/Firebase 연동)
        todayWord = Word(korean: "사랑", japanese: "愛（あい）")
        todaySentence = Sentence(korean: "안녕하세요!", japanese: "こんにちは！")
    }
}
