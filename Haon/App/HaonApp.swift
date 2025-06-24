//
//  HaonApp.swift
//  Haon
//
//  Created by junil on 6/25/25.
//

import SwiftUI
import Firebase

@main
struct HaonApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var userViewModel = UserViewModel()

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(userViewModel)
        }
    }
}

// Firebase 초기화용
final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        return true
    }
}
