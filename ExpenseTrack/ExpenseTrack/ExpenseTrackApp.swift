//
//  ExpenseTrackApp.swift
//  ExpenseTrack
//
//  Created by Cevher Şirin on 4.02.2024.
//

import SwiftUI
import WidgetKit

@main
struct ExpenseTrackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
