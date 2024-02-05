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
    /// App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockedEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
    /// Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        LockView(lockType: .biometric, lockPin: "", isEnabled: isAppLockedEnabled, lockWhenAppGoesBackground: lockWhenAppGoesBackground) {
            TabView(selection: $activeTab) {
                Recents()
                    .tag(Tab.recents)
                    .tabItem { Tab.recents.tabContent }
                
                Search()
                    .tag(Tab.search)
                    .tabItem { Tab.search.tabContent }
                
                Charts()
                    .tag(Tab.charts)
                    .tabItem { Tab.charts.tabContent }
                
                Settings()
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
}

#Preview {
    ContentView()
}
