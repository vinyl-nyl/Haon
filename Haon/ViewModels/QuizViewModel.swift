//
//  QuizViewModel.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Combine

final class QuizViewModel: ObservableObject {
    @Published var currentQuestion: Word = Word(korean: "사랑", japanese: "愛")
    @Published var currentOptions: [String] = []

    func loadQuiz() {
        // 샘플 데이터 기반 퀴즈 생성
        let allWords = [
            Word(korean: "사랑", japanese: "愛"),
            Word(korean: "행복", japanese: "幸せ"),
            Word(korean: "친구", japanese: "友達"),
            Word(korean: "고마워", japanese: "ありがとう")
        ]

        if let question = allWords.randomElement() {
            currentQuestion = question
            currentOptions = allWords
                .map { $0.japanese }
                .shuffled()
        }
    }

    func checkAnswer(_ selected: String) {
        let isCorrect = selected == currentQuestion.japanese
        print(isCorrect ? "정답!" : "오답!")
        loadQuiz()
    }
}
