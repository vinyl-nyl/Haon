//
//  WordRepository.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation

final class WordRepository {
    func fetchWords() -> [Word] {
        return [
            Word(korean: "사랑", japanese: "愛"),
            Word(korean: "고마워", japanese: "ありがとう"),
            Word(korean: "친구", japanese: "友達"),
            Word(korean: "행복", japanese: "幸せ")
        ]
    }
}
