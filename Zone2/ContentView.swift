//
//  ContentView.swift
//  Zone2
//
//  Created by Joshua Baker on 5/28/22.
//

import SwiftUI

struct ContentView: View {
//    var body = HeartBeatView(199)
    var body: some View {
        TabView{
            // First Screen
            TrendView()
                .tabItem{
                    Label("Aerobic Fitness", systemImage: "chart.line.uptrend.xyaxis.circle.fill")
                }
            
            // Second Screen
            HeartBeatView(42)
                .tabItem {
                    Label("Zone Two Training", systemImage: "heart.fill")
                }
            
            // Third Screen
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "allergens")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




