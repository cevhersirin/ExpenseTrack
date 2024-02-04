//
//  ContentView.swift
//  ExpenseTrack
//
//  Created by Cevher Şirin on 4.02.2024.
//

import SwiftUI

struct ContentView: View {
    /// Visibility Status
    @AppStorage("isFirstTime") private var isFirtTime: Bool = true
    /// Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Recents")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Text("Search")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Text("Chart")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Text("Settings")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirtTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
