//
//  Settings.swift
//  ExpenseTrack
//
//  Created by Cevher Şirin on 4.02.2024.
//

import SwiftUI

struct Settings: View {
    /// User Properties
    @AppStorage("userName") private var userName: String = ""
    /// App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockedEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section("User Name") {
                    TextField("Enter User Name", text: $userName)
                }
                
                Section("App Lock") {
                    Toggle("Enable App Lock", isOn: $isAppLockedEnabled )
                    
                    if isAppLockedEnabled {
                        Toggle("Lock When App Goes Background", isOn: $lockWhenAppGoesBackground)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
