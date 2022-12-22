//
//  ContentView.swift
//  LessCards
//
//  Created by Vadym Piatkovskyi on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CardsView().tabItem {
                Label("Cards", systemImage: "creditcard")
            }
            
            SettingsView().tabItem {
                Label("Settings", systemImage: "gearshape")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
