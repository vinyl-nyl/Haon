//
//  FirebaseService.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import Foundation
import Firebase

final class FirebaseService {
    static let shared = FirebaseService()

    private init() {}

    func initialize() {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
    }

    func fetchUserID() -> String? {
        Auth.auth().currentUser?.uid
    }

    func signInAnonymously(completion: @escaping (Result<Void, Error>) -> Void) {
        Auth.auth().signInAnonymously { result, error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }
}
