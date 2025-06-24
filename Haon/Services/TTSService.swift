//
//  TTSService.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import AVFoundation

final class TTSService {
    private let synthesizer = AVSpeechSynthesizer()

    func speak(_ text: String, language: String = "ko-KR") {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        utterance.rate = 0.5
        synthesizer.speak(utterance)
    }
}
