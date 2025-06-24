//
//  SpeechRecognitionService.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Speech

final class SpeechRecognitionService: NSObject, SFSpeechRecognizerDelegate {
    private let recognizer = SFSpeechRecognizer(locale: Locale(identifier: "ko-KR"))
    private let audioEngine = AVAudioEngine()
    private var request: SFSpeechAudioBufferRecognitionRequest?
    private var task: SFSpeechRecognitionTask?

    func requestPermission(completion: @escaping (Bool) -> Void) {
        SFSpeechRecognizer.requestAuthorization { status in
            DispatchQueue.main.async {
                completion(status == .authorized)
            }
        }
    }

    func startRecognition(completion: @escaping (String?) -> Void) throws {
        task?.cancel()
        task = nil

        let session = AVAudioSession.sharedInstance()
        try session.setCategory(.record, mode: .measurement, options: .duckOthers)
        try session.setActive(true, options: .notifyOthersOnDeactivation)

        request = SFSpeechAudioBufferRecognitionRequest()
        let inputNode = audioEngine.inputNode

        guard let request = request else { throw NSError() }

        task = recognizer?.recognitionTask(with: request) { result, error in
            if let result = result {
                completion(result.bestTranscription.formattedString)
            } else if let error = error {
                print("Speech error: \(error)")
                completion(nil)
            }
        }

        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
            self.request?.append(buffer)
        }

        audioEngine.prepare()
        try audioEngine.start()
    }

    func stopRecognition() {
        audioEngine.stop()
        request?.endAudio()
        task = nil
    }
}
