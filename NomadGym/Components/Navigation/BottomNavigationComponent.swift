//
//  BottomNavigationComponent.swift
//  NomadGym
//
//  Created by Damon De Letter on 01/11/2022.
//

import SwiftUI

struct BottomNavigationComponent: View {
    let textColor = Color.hexColour(hexValue: 0x19213F)
    var body: some View {
        TabView {
            
            
            ExploreHomeView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Explore").foregroundColor(textColor)
                    
                }
                .toolbar(.visible, for: .tabBar)
               
            
            WorkoutView()
                .tabItem() {
                    Image(systemName: "dumbbell")
                    Text("Workout").foregroundColor(textColor)
                }
                .toolbar(.visible, for: .tabBar)
           
            VideoFeedView()
                .tabItem() {
                    Image(systemName: "play.circle")
                    Text("Video feed")
                }
                .toolbar(.visible, for: .tabBar)
            
            MoreNavigationView()
                .tabItem() {
                Image(systemName:"ellipsis")
                Text("More")
            }
            .toolbar(.visible, for: .tabBar)
        }
        
        .accentColor(.hexColour(hexValue: 0xffffff))

    }
}

struct BottomNavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationComponent()
    }
}
