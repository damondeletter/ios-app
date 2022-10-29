//
//  ContentView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = ""
    let custom = Color.hexColour(hexValue: 0xf3f4fb)
    let textColor = Color.hexColour(hexValue: 0x19213F)
    var body: some View {
        TabView {
            
            ExploreHomeView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Explore").foregroundColor(textColor)
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(
                        custom,
                        for: .tabBar)
            WorkoutView()
                .tabItem() {
                    Image(systemName: "dumbbell")
                    Text("Workout").foregroundColor(textColor)
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(
                        custom,
                        for: .tabBar)
            VideoFeedView()
                .tabItem() {
                    Image(systemName: "play.circle")
                    Text("Video feed")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(
                        custom,
                        for: .tabBar)
            
            MoreNavigationView()
                .tabItem() {
                Image(systemName:"ellipsis")
                Text("More")
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(
                    custom,
                    for: .tabBar)
             
        }
        
        .accentColor(.hexColour(hexValue: 0x94CCFE))
        
        
             
        /* more bestaat uit: settings, forum page voor te zeggen
         hoe druk,.., contact page voor email?*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
