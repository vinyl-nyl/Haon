//
//  WordViewModel.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Combine

final class WordViewModel: ObservableObject {
    @Published var words: [Word] = []

    func loadWords() {
        // 샘플 데이터 (향후 Firebase/로컬 DB 연동 예정)
        words = [
            Word(korean: "고마워", japanese: "ありがとう"),
            Word(korean: "사랑", japanese: "愛"),
            Word(korean: "행복", japanese: "幸せ"),
            Word(korean: "친구", japanese: "友達")
        ]
    }
}
